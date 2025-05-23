import '/flutter_flow/flutter_flow_util.dart';
import 'ver_historial_widget.dart' show VerHistorialWidget;
import 'package:flutter/material.dart';

class VerHistorialModel extends FlutterFlowModel<VerHistorialWidget> {
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

    veterinarioFocusNode?.dispose();
    veterinarioTextController?.dispose();
  }
}
