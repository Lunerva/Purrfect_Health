import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'crear_cartilla_widget.dart' show CrearCartillaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearCartillaModel extends FlutterFlowModel<CrearCartillaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for FechaAp widget.
  FocusNode? fechaApFocusNode;
  TextEditingController? fechaApTextController;
  String? Function(BuildContext, String?)? fechaApTextControllerValidator;
  // State field(s) for ProxDosis widget.
  FocusNode? proxDosisFocusNode;
  TextEditingController? proxDosisTextController;
  String? Function(BuildContext, String?)? proxDosisTextControllerValidator;
  // State field(s) for Lote widget.
  FocusNode? loteFocusNode;
  TextEditingController? loteTextController;
  String? Function(BuildContext, String?)? loteTextControllerValidator;
  // State field(s) for Observaciones widget.
  FocusNode? observacionesFocusNode;
  TextEditingController? observacionesTextController;
  String? Function(BuildContext, String?)? observacionesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    fechaApFocusNode?.dispose();
    fechaApTextController?.dispose();

    proxDosisFocusNode?.dispose();
    proxDosisTextController?.dispose();

    loteFocusNode?.dispose();
    loteTextController?.dispose();

    observacionesFocusNode?.dispose();
    observacionesTextController?.dispose();
  }
}
