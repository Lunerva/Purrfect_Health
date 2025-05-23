import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_citas_widget.dart' show CrearCitasWidget;
import 'package:flutter/material.dart';

class CrearCitasModel extends FlutterFlowModel<CrearCitasWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for lugar widget.
  FocusNode? lugarFocusNode;
  TextEditingController? lugarTextController;
  String? Function(BuildContext, String?)? lugarTextControllerValidator;
  String? _lugarTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Lugar is required';
    }

    return null;
  }

  // State field(s) for motivo widget.
  FocusNode? motivoFocusNode;
  TextEditingController? motivoTextController;
  String? Function(BuildContext, String?)? motivoTextControllerValidator;
  String? _motivoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Motivo is required';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Custom Action - getDoc] action in Button widget.
  DocumentReference? csMascotaId;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CitasRecord? citaID;

  @override
  void initState(BuildContext context) {
    lugarTextControllerValidator = _lugarTextControllerValidator;
    motivoTextControllerValidator = _motivoTextControllerValidator;
  }

  @override
  void dispose() {
    lugarFocusNode?.dispose();
    lugarTextController?.dispose();

    motivoFocusNode?.dispose();
    motivoTextController?.dispose();
  }
}
