import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'modificar_mascota_widget.dart' show ModificarMascotaWidget;
import 'package:flutter/material.dart';

class ModificarMascotaModel extends FlutterFlowModel<ModificarMascotaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

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
