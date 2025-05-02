import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'modificar_mascota_widget.dart' show ModificarMascotaWidget;
import 'package:flutter/material.dart';

class ModificarMascotaModel extends FlutterFlowModel<ModificarMascotaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for tfTipo widget.
  FocusNode? tfTipoFocusNode;
  TextEditingController? tfTipoTextController;
  String? Function(BuildContext, String?)? tfTipoTextControllerValidator;
  // State field(s) for tfDescripcion widget.
  FocusNode? tfDescripcionFocusNode;
  TextEditingController? tfDescripcionTextController;
  String? Function(BuildContext, String?)? tfDescripcionTextControllerValidator;
  // State field(s) for tfFecha widget.
  FocusNode? tfFechaFocusNode;
  TextEditingController? tfFechaTextController;
  String? Function(BuildContext, String?)? tfFechaTextControllerValidator;
  // State field(s) for tfArchivo widget.
  FocusNode? tfArchivoFocusNode;
  TextEditingController? tfArchivoTextController;
  String? Function(BuildContext, String?)? tfArchivoTextControllerValidator;
  // State field(s) for tfVeterinario widget.
  FocusNode? tfVeterinarioFocusNode;
  TextEditingController? tfVeterinarioTextController;
  String? Function(BuildContext, String?)? tfVeterinarioTextControllerValidator;
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for especie widget.
  FocusNode? especieFocusNode;
  TextEditingController? especieTextController;
  String? Function(BuildContext, String?)? especieTextControllerValidator;
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
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    tfTipoFocusNode?.dispose();
    tfTipoTextController?.dispose();

    tfDescripcionFocusNode?.dispose();
    tfDescripcionTextController?.dispose();

    tfFechaFocusNode?.dispose();
    tfFechaTextController?.dispose();

    tfArchivoFocusNode?.dispose();
    tfArchivoTextController?.dispose();

    tfVeterinarioFocusNode?.dispose();
    tfVeterinarioTextController?.dispose();

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
