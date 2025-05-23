// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// nombre: sendEmailJs
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> sendEmailJs(
  String userName,
  String userEmail,
  String title,
  String message,
) async {
  //endpoint oficial de emailjs
  const url = 'https://api.emailjs.com/api/v1.0/email/send';

  //estructura del body requerida por emailjs
  final body = {
    "service_id": "service_q76h4nl",
    "template_id": "template_8b0290k",
    "user_id": "ASFfy19YiDuf8bgRY",
    "template_params": {
      "name": userName,
      "email": userEmail,
      "title": title,
      "message": message,
    }
  };

  //encabezados http requeridos
  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'ASFfy19YiDuf8bgRY', //autenticación mediante public key
  };

  //se realiza la solicitud POST
  final response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: json.encode(body),
  );

  //manejo de errores en caso de fallo
  if (response.statusCode != 200) {
    throw Exception('Error al enviar el correo: ${response.body}');
  }
}
