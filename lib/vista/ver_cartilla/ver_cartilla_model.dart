import '/flutter_flow/flutter_flow_util.dart';
import 'ver_cartilla_widget.dart' show VerCartillaWidget;
import 'package:flutter/material.dart';

class VerCartillaModel extends FlutterFlowModel<VerCartillaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for fechaApl widget.
  FocusNode? fechaAplFocusNode;
  TextEditingController? fechaAplTextController;
  String? Function(BuildContext, String?)? fechaAplTextControllerValidator;
  // State field(s) for proxDosis widget.
  FocusNode? proxDosisFocusNode;
  TextEditingController? proxDosisTextController;
  String? Function(BuildContext, String?)? proxDosisTextControllerValidator;
  // State field(s) for Lote widget.
  FocusNode? loteFocusNode;
  TextEditingController? loteTextController;
  String? Function(BuildContext, String?)? loteTextControllerValidator;
  // State field(s) for Observaciones widget.
  FocusNode? observacionesFocusNode;
  TextEditingController? observacionesTextController;
  String? Function(BuildContext, String?)? observacionesTextControllerValidator;
  // Stores action output result for [Custom Action - generarPdfVacuna] action in Button widget.
  String? pathPDF;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    fechaAplFocusNode?.dispose();
    fechaAplTextController?.dispose();

    proxDosisFocusNode?.dispose();
    proxDosisTextController?.dispose();

    loteFocusNode?.dispose();
    loteTextController?.dispose();

    observacionesFocusNode?.dispose();
    observacionesTextController?.dispose();
  }
}
