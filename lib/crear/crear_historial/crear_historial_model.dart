import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'crear_historial_widget.dart' show CrearHistorialWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearHistorialModel extends FlutterFlowModel<CrearHistorialWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Tipo widget.
  FocusNode? tipoFocusNode;
  TextEditingController? tipoTextController;
  String? Function(BuildContext, String?)? tipoTextControllerValidator;
  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  // State field(s) for Fecha widget.
  FocusNode? fechaFocusNode;
  TextEditingController? fechaTextController;
  String? Function(BuildContext, String?)? fechaTextControllerValidator;
  // State field(s) for Imagen widget.
  FocusNode? imagenFocusNode;
  TextEditingController? imagenTextController;
  String? Function(BuildContext, String?)? imagenTextControllerValidator;
  // State field(s) for Veterinario widget.
  FocusNode? veterinarioFocusNode;
  TextEditingController? veterinarioTextController;
  String? Function(BuildContext, String?)? veterinarioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tipoFocusNode?.dispose();
    tipoTextController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();

    fechaFocusNode?.dispose();
    fechaTextController?.dispose();

    imagenFocusNode?.dispose();
    imagenTextController?.dispose();

    veterinarioFocusNode?.dispose();
    veterinarioTextController?.dispose();
  }
}
