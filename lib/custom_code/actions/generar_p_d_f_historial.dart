// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:html' as html;
import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/services.dart' show rootBundle;

Future generarPDFHistorial(
  String tipo,
  String descripcion,
  String fecha,
  String archivo,
  String veterinario,
) async {
  final pdf = pw.Document();

  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      return pw.Padding(
        padding: const pw.EdgeInsets.all(24.0),
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Center(
              child: pw.Text(
                'Historial Médico',
                style: pw.TextStyle(
                  fontSize: 24,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ),
            pw.SizedBox(height: 20),
            pw.Divider(),
            _buildField('Tipo', tipo),
            pw.Divider(),
            _buildField('Descripcion', descripcion),
            pw.Divider(),
            _buildField('Fecha', fecha),
            pw.Divider(),
            _buildField('Imagen de mascota', archivo),
            pw.Divider(),
            _buildField('Veterinario', veterinario),
            pw.Divider(),
            pw.SizedBox(height: 20),
          ],
        ),
      );
    },
  ));

  final pdfSaved = await pdf.save();

  // Forzar descarga del archivo
  final blob = html.Blob([pdfSaved], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..setAttribute('download', 'Historial_Médico.pdf')
    ..click();
  html.Url.revokeObjectUrl(url); // Limpia la memoria
}

// Widget auxiliar
pw.Widget _buildField(String label, String value) {
  return pw.Padding(
    padding: const pw.EdgeInsets.symmetric(vertical: 4.0),
    child: pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Expanded(
          flex: 2,
          child: pw.Text(
            '$label:',
            style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
          ),
        ),
        pw.Expanded(
          flex: 3,
          child: pw.Text(value),
        ),
      ],
    ),
  );
}
