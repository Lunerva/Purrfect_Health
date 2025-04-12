import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'modificar_mascota_widget.dart' show ModificarMascotaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModificarMascotaModel extends FlutterFlowModel<ModificarMascotaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for tfNombre widget.
  FocusNode? tfNombreFocusNode;
  TextEditingController? tfNombreTextController;
  String? Function(BuildContext, String?)? tfNombreTextControllerValidator;
  // State field(s) for tfLote widget.
  FocusNode? tfLoteFocusNode;
  TextEditingController? tfLoteTextController;
  String? Function(BuildContext, String?)? tfLoteTextControllerValidator;
  // State field(s) for tfFechaAd widget.
  FocusNode? tfFechaAdFocusNode;
  TextEditingController? tfFechaAdTextController;
  String? Function(BuildContext, String?)? tfFechaAdTextControllerValidator;
  // State field(s) for tfSigVacuna widget.
  FocusNode? tfSigVacunaFocusNode;
  TextEditingController? tfSigVacunaTextController;
  String? Function(BuildContext, String?)? tfSigVacunaTextControllerValidator;
  // State field(s) for tfObservaciones widget.
  FocusNode? tfObservacionesFocusNode;
  TextEditingController? tfObservacionesTextController;
  String? Function(BuildContext, String?)?
      tfObservacionesTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
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
    tfNombreFocusNode?.dispose();
    tfNombreTextController?.dispose();

    tfLoteFocusNode?.dispose();
    tfLoteTextController?.dispose();

    tfFechaAdFocusNode?.dispose();
    tfFechaAdTextController?.dispose();

    tfSigVacunaFocusNode?.dispose();
    tfSigVacunaTextController?.dispose();

    tfObservacionesFocusNode?.dispose();
    tfObservacionesTextController?.dispose();

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
