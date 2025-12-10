import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'editar_solicitacao_widget.dart' show EditarSolicitacaoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarSolicitacaoModel extends FlutterFlowModel<EditarSolicitacaoWidget> {
  ///  Local state fields for this component.

  String? prioridade;

  ///  State fields for stateful widgets in this component.

  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode1;
  TextEditingController? txtTituloTextController1;
  String? Function(BuildContext, String?)? txtTituloTextController1Validator;
  // State field(s) for txtDescricao widget.
  FocusNode? txtDescricaoFocusNode;
  TextEditingController? txtDescricaoTextController;
  String? Function(BuildContext, String?)? txtDescricaoTextControllerValidator;
  // State field(s) for txtResumo widget.
  FocusNode? txtResumoFocusNode;
  TextEditingController? txtResumoTextController;
  String? Function(BuildContext, String?)? txtResumoTextControllerValidator;
  // State field(s) for dropAcessor widget.
  String? dropAcessorValue;
  FormFieldController<String>? dropAcessorValueController;
  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode2;
  TextEditingController? txtTituloTextController2;
  String? Function(BuildContext, String?)? txtTituloTextController2Validator;
  // State field(s) for dropCategoria widget.
  String? dropCategoriaValue;
  FormFieldController<String>? dropCategoriaValueController;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<NotasRow>? buscarNotas;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtTituloFocusNode1?.dispose();
    txtTituloTextController1?.dispose();

    txtDescricaoFocusNode?.dispose();
    txtDescricaoTextController?.dispose();

    txtResumoFocusNode?.dispose();
    txtResumoTextController?.dispose();

    txtTituloFocusNode2?.dispose();
    txtTituloTextController2?.dispose();
  }
}
