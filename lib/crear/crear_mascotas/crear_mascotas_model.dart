import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'crear_mascotas_widget.dart' show CrearMascotasWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearMascotasModel extends FlutterFlowModel<CrearMascotasWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for especie widget.
  FocusNode? especieFocusNode;
  TextEditingController? especieTextController;
  String? Function(BuildContext, String?)? especieTextControllerValidator;
  String? _especieTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for raza widget.
  FocusNode? razaFocusNode;
  TextEditingController? razaTextController;
  String? Function(BuildContext, String?)? razaTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for sexo widget.
  FocusNode? sexoFocusNode;
  TextEditingController? sexoTextController;
  String? Function(BuildContext, String?)? sexoTextControllerValidator;

  @override
  void initState(BuildContext context) {
    especieTextControllerValidator = _especieTextControllerValidator;
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    especieFocusNode?.dispose();
    especieTextController?.dispose();

    razaFocusNode?.dispose();
    razaTextController?.dispose();

    sexoFocusNode?.dispose();
    sexoTextController?.dispose();
  }
}
