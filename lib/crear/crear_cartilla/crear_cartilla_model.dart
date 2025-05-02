import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'crear_cartilla_widget.dart' show CrearCartillaWidget;
import 'package:flutter/material.dart';

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
  DateTime? datePicked1;
  // State field(s) for ProxDosis widget.
  FocusNode? proxDosisFocusNode;
  TextEditingController? proxDosisTextController;
  String? Function(BuildContext, String?)? proxDosisTextControllerValidator;
  DateTime? datePicked2;
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
