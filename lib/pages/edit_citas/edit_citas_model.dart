import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'edit_citas_widget.dart' show EditCitasWidget;
import 'package:flutter/material.dart';

class EditCitasModel extends FlutterFlowModel<EditCitasWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for lugar widget.
  FocusNode? lugarFocusNode;
  TextEditingController? lugarTextController;
  String? Function(BuildContext, String?)? lugarTextControllerValidator;
  // State field(s) for motivo widget.
  FocusNode? motivoFocusNode;
  TextEditingController? motivoTextController;
  String? Function(BuildContext, String?)? motivoTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  MascotasRecord? refMascotaa;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<RecordatoriosRecord>? listaRecordatorios;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    lugarFocusNode?.dispose();
    lugarTextController?.dispose();

    motivoFocusNode?.dispose();
    motivoTextController?.dispose();
  }
}
