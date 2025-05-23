// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:intl/intl.dart'; // necesario para usar DateFormat

Future<void> enviarCorreoRecordatorioCita(
  String correoDestino,
  DateTime fecha,
  String motivo,
  String lugar,
) async {
  // configura las credenciales SMTP (remplazar con valores reales)
  final String usuario = 'tcodesolutions554@gmail.com'; // correo remitente
  final String clave = 'cvvmhpzqwvgggqfm'; // contraseña o app password
  final smtpServer = gmail(usuario, clave); // puedes usar otro servidor

  // crea el contenido del mensaje
  final mensaje = Message()
    ..from = Address(usuario, 'Veterinaria App')
    ..recipients.add(correoDestino)
    ..subject = 'Recordatorio de cita para tu mascota'
    ..text =
        'Tienes una cita por $motivo en $lugar el día ${DateFormat('dd/MM/yyyy HH:mm').format(fecha)}.'
    ..html = '''
    <h3>Recordatorio de cita</h3>
    <p><strong>Motivo:</strong> $motivo</p>
    <p><strong>Lugar:</strong> $lugar</p>
    <p><strong>Fecha:</strong> ${DateFormat('dd/MM/yyyy HH:mm').format(fecha)}</p>
    <br>
    <p>Este es un recordatorio automático de tu aplicación veterinaria.</p>
    ''';

  try {
    final sendReport = await send(mensaje, smtpServer);
    print('Correo enviado: ' + sendReport.toString());
  } on MailerException catch (e) {
    print('Error al enviar el correo: $e');
    for (var p in e.problems) {
      print('Problema: ${p.code}: ${p.msg}');
    }
  }
}
