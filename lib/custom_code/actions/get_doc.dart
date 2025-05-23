// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:cloud_firestore/cloud_firestore.dart';

// Esta acción convierte un string (ID del documento) en una DocumentReference
Future<DocumentReference> getDoc(String userId, String mascotaId) async {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // ruta correcta con el UID del usuario
  String documentPath = "users/$userId/mascotas/$mascotaId";

  // retorna la referencia
  return firestore.doc(documentPath);
}
