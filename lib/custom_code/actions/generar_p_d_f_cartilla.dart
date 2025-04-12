// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//import 'dart:typed_data';
import 'dart:html' as html;
import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/services.dart' show rootBundle;

Future generarPDFCartilla(
  String nombre,
  String lote,
  String fechaAplicacion,
  String proximaDosis,
  String observaciones,
) async {
  /*final pdf = pw.Document();

  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      return pw.Column(
        children: [
          pw.Row(children: [pw.Text('Nombre: '), pw.Text(nombre)]),
          pw.Row(children: [pw.Text('Lote: '), pw.Text(lote)]),
          pw.Row(children: [
            pw.Text('Fecha de aplicación: '),
            pw.Text(fechaAplicacion)
          ]),
          pw.Row(children: [pw.Text('Próxima dosis: '), pw.Text(proximaDosis)]),
          pw.Row(
              children: [pw.Text('Observaciones: '), pw.Text(observaciones)]),
        ],
      );
    },
  ));

  final Uint8List pdfSaved = await pdf.save();

  final blob = html.Blob([pdfSaved], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);

  final anchor = html.AnchorElement(href: url)
    ..setAttribute('download', 'cartilla_vacunacion.pdf')
    ..click();

  html.Url.revokeObjectUrl(url);*/
  // Esta parte es específica para Flutter Web
  /*final blob = html.Blob([pdfSaved], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);
  html.window.open(url, '_blank');*/

  /*final pdf = pw.Document();

  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          children: [
            pw.Row(
              children: [
                pw.Text('Nombre: '),
                pw.Text(nombre!),
              ],
            ),
            pw.Row(
              children: [
                pw.Text('Lote: '),
                pw.Text(lote!),
              ],
            ),
            pw.Row(
              children: [
                pw.Text('Fecha de aplicación: '),
                pw.Text(fechaAplicacion!),
              ],
            ),
            pw.Row(
              children: [
                pw.Text('Proxima dosis: '),
                pw.Text(proximaDosis!),
              ],
            ),
            pw.Row(
              children: [
                pw.Text('Observaciones: '),
                pw.Text(observaciones!),
              ],
            ),
          ],
        );
      }));

  final pdfSaved = await pdf.save();

  await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdfSaved);*/

  /*final pdf = pw.Document();

  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      return pw.Column(
        children: [
          pw.Row(
            children: [
              pw.Text('Nombre: '),
              pw.Text(nombre),
            ],
          ),
          pw.Row(
            children: [
              pw.Text('Lote: '),
              pw.Text(lote),
            ],
          ),
          pw.Row(
            children: [
              pw.Text('Fecha de aplicación: '),
              pw.Text(fechaAplicacion),
            ],
          ),
          pw.Row(
            children: [
              pw.Text('Próxima dosis: '),
              pw.Text(proximaDosis),
            ],
          ),
          pw.Row(
            children: [
              pw.Text('Observaciones: '),
              pw.Text(observaciones),
            ],
          ),
        ],
      );
    },
  ));

  final pdfSaved = await pdf.save();

  final blob = html.Blob([pdfSaved], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);
  html.window.open(url, '_blank');
}*/

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
                'Cartilla de Vacunación',
                style: pw.TextStyle(
                  fontSize: 24,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ),
            pw.SizedBox(height: 20),
            pw.Divider(),
            _buildField('Nombre', nombre),
            pw.Divider(),
            _buildField('Lote', lote),
            pw.Divider(),
            _buildField('Fecha de aplicación', fechaAplicacion),
            pw.Divider(),
            _buildField('Próxima dosis', proximaDosis),
            pw.Divider(),
            _buildField('Observaciones', observaciones),
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
    ..setAttribute('download', 'Cartilla_Vacunacion.pdf')
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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
