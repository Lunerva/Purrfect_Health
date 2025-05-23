// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:typed_data';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

/// genera un PDF con los datos de vacunación y el logotipo de la app

Future<String> generarPdfVacuna(
  String nombre,
  DateTime fechaAplicacion,
  DateTime proximaDosis,
  String lote,
  String observaciones,
) async {
  try {
    final pdf = pw.Document();

    final ByteData bytes = await rootBundle.load('assets/images/Logo.png');
    final Uint8List logotipoData = bytes.buffer.asUint8List();
    final pw.ImageProvider logotipo = pw.MemoryImage(logotipoData);

    final fechaAplicacionStr =
        DateFormat('dd/MM/yyyy').format(fechaAplicacion.toLocal());
    final proximaDosisStr =
        DateFormat('dd/MM/yyyy').format(proximaDosis.toLocal());

    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.all(32),
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Center(
                child: pw.Image(logotipo, height: 80, width: 80),
              ),
              pw.SizedBox(height: 20),
              pw.Text(
                'Registro de Vacunación',
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                  font: pw.Font.helvetica(),
                ),
              ),
              pw.Divider(),
              pw.SizedBox(height: 10),
              pw.Text('Nombre del paciente: $nombre'),
              pw.Text('Fecha de aplicación: $fechaAplicacionStr'),
              pw.Text('Próxima dosis: $proximaDosisStr'),
              pw.Text('Lote: $lote'),
              pw.Text(
                'Observaciones: $observaciones',
                softWrap: true,
              ),
              pw.SizedBox(height: 20),
              pw.Text(
                'Documento generado automáticamente',
                style: pw.TextStyle(fontSize: 10, color: PdfColors.grey600),
              ),
            ],
          );
        },
      ),
    );

    final output = await getTemporaryDirectory();
    final fileName =
        'vacuna_${nombre}_${DateTime.now().millisecondsSinceEpoch}.pdf'
            .replaceAll(' ', '_');
    final file = File('${output.path}/$fileName');
    await file.writeAsBytes(await pdf.save());

    await Share.shareXFiles(
      [XFile(file.path, name: fileName)],
      text: '📄 Registro de vacunación de $nombre',
      subject: 'Vacuna de $nombre',
    );

    return file.path;
  } catch (e, stack) {
    print('⚠️ Error al generar PDF: $e');
    print('Stack trace: $stack');
    throw Exception('Error generando PDF: $e');
  }
}
