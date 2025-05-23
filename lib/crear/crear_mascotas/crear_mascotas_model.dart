import '/flutter_flow/flutter_flow_util.dart';
import 'crear_mascotas_widget.dart' show CrearMascotasWidget;
import 'package:flutter/material.dart';

class CrearMascotasModel extends FlutterFlowModel<CrearMascotasWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for especie widget.
  FocusNode? especieFocusNode;
  TextEditingController? especieTextController;
  String? Function(BuildContext, String?)? especieTextControllerValidator;
  String? _especieTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Especie is required';
    }

    return null;
  }

  // State field(s) for raza widget.
  FocusNode? razaFocusNode;
  TextEditingController? razaTextController;
  String? Function(BuildContext, String?)? razaTextControllerValidator;
  String? _razaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Raza is required';
    }

    return null;
  }

  // State field(s) for sexo widget.
  FocusNode? sexoFocusNode;
  TextEditingController? sexoTextController;
  String? Function(BuildContext, String?)? sexoTextControllerValidator;
  String? _sexoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Sexo is required';
    }

    return null;
  }

  DateTime? datePicked;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
    especieTextControllerValidator = _especieTextControllerValidator;
    razaTextControllerValidator = _razaTextControllerValidator;
    sexoTextControllerValidator = _sexoTextControllerValidator;
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
