// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

/// Set your action name, define your arguments and return parameter, and then
/// add the boilerplate code using the green button on the right!

import 'dart:io';
import 'dart:typed_data';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

Future<String> generarPdfDesdeReferencias(List<DocumentReference> refs) async {
  try {
    final pdf = pw.Document();

    final ByteData bytes = await rootBundle.load('assets/images/Logo.png');
    final Uint8List logotipoData = bytes.buffer.asUint8List();
    final pw.ImageProvider logotipo = pw.MemoryImage(logotipoData);

    // obtener datos de todas las vacunas
    final vacunas = await Future.wait(refs.map((ref) async {
      final snap = await ref.get();
      final data = snap.data() as Map<String, dynamic>;

      return {
        'nombre': data['nombre'] ?? '',
        'fechaAplicacion': (data['fecha_aplicacion'] as Timestamp).toDate(),
        'proximaDosis': (data['proxima_dosis'] as Timestamp).toDate(),
        'lote': data['lote'] ?? '',
        'observaciones': data['observaciones'] ?? '',
      };
    }));

    pdf.addPage(
      pw.MultiPage(
        margin: const pw.EdgeInsets.all(32),
        build: (context) => [
          pw.Center(child: pw.Image(logotipo, height: 80, width: 80)),
          pw.SizedBox(height: 20),
          pw.Text('Historial de Vacunación',
              style:
                  pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Divider(),
          ...vacunas.map((v) {
            final fAplic =
                DateFormat('dd/MM/yyyy').format(v['fechaAplicacion']);
            final fProx = DateFormat('dd/MM/yyyy').format(v['proximaDosis']);

            return pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text('Nombre: ${v['nombre']}',
                    style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                pw.Text('Fecha de aplicación: $fAplic'),
                pw.Text('Próxima dosis: $fProx'),
                pw.Text('Lote: ${v['lote']}'),
                pw.Text('Observaciones: ${v['observaciones']}'),
                pw.Divider(),
                pw.SizedBox(height: 10),
              ],
            );
          }).toList(),
          pw.SizedBox(height: 20),
          pw.Text('Documento generado automáticamente',
              style: pw.TextStyle(fontSize: 10, color: PdfColors.grey600)),
        ],
      ),
    );

    final output = await getTemporaryDirectory();
    final fileName = 'vacunas_${DateTime.now().millisecondsSinceEpoch}.pdf';
    final file = File('${output.path}/$fileName');
    await file.writeAsBytes(await pdf.save());

    return file.path;
  } catch (e, stack) {
    print('⚠️ Error al generar PDF: $e');
    print('Stack trace: $stack');
    throw Exception('Error generando PDF: $e');
  }
}
