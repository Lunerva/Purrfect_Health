import '/flutter_flow/flutter_flow_util.dart';
import 'crear_cartilla_widget.dart' show CrearCartillaWidget;
import 'package:flutter/material.dart';

class CrearCartillaModel extends FlutterFlowModel<CrearCartillaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre is required';
    }

    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for Lote widget.
  FocusNode? loteFocusNode;
  TextEditingController? loteTextController;
  String? Function(BuildContext, String?)? loteTextControllerValidator;
  String? _loteTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Lote is required';
    }

    return null;
  }

  // State field(s) for Observaciones widget.
  FocusNode? observacionesFocusNode;
  TextEditingController? observacionesTextController;
  String? Function(BuildContext, String?)? observacionesTextControllerValidator;
  String? _observacionesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Observaciones is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
    loteTextControllerValidator = _loteTextControllerValidator;
    observacionesTextControllerValidator =
        _observacionesTextControllerValidator;
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    loteFocusNode?.dispose();
    loteTextController?.dispose();

    observacionesFocusNode?.dispose();
    observacionesTextController?.dispose();
  }
}
