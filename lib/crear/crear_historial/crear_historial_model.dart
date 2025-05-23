import '/flutter_flow/flutter_flow_util.dart';
import 'crear_historial_widget.dart' show CrearHistorialWidget;
import 'package:flutter/material.dart';

class CrearHistorialModel extends FlutterFlowModel<CrearHistorialWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Tipo widget.
  FocusNode? tipoFocusNode;
  TextEditingController? tipoTextController;
  String? Function(BuildContext, String?)? tipoTextControllerValidator;
  String? _tipoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre is required';
    }

    return null;
  }

  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  String? _descripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre is required';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for veterinario widget.
  FocusNode? veterinarioFocusNode;
  TextEditingController? veterinarioTextController;
  String? Function(BuildContext, String?)? veterinarioTextControllerValidator;
  String? _veterinarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Observaciones is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    tipoTextControllerValidator = _tipoTextControllerValidator;
    descripcionTextControllerValidator = _descripcionTextControllerValidator;
    veterinarioTextControllerValidator = _veterinarioTextControllerValidator;
  }

  @override
  void dispose() {
    tipoFocusNode?.dispose();
    tipoTextController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();

    veterinarioFocusNode?.dispose();
    veterinarioTextController?.dispose();
  }
}
