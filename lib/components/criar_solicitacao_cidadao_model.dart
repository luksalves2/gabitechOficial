import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'criar_solicitacao_cidadao_widget.dart'
    show CriarSolicitacaoCidadaoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CriarSolicitacaoCidadaoModel
    extends FlutterFlowModel<CriarSolicitacaoCidadaoWidget> {
  ///  Local state fields for this component.

  String? prioridade;

  ///  State fields for stateful widgets in this component.

  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloTextController;
  String? Function(BuildContext, String?)? txtTituloTextControllerValidator;
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
  // State field(s) for txtPrazo widget.
  FocusNode? txtPrazoFocusNode;
  TextEditingController? txtPrazoTextController;
  late MaskTextInputFormatter txtPrazoMask;
  String? Function(BuildContext, String?)? txtPrazoTextControllerValidator;
  // State field(s) for dropCategoria widget.
  int? dropCategoriaValue;
  FormFieldController<int>? dropCategoriaValueController;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CategoriasTarefasRow>? buscarCategoria;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  SolicitacoesRow? criarSolicitacao;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsuariosRow>? buscarAcessor;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsuariosRow>? vereador;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtTituloFocusNode?.dispose();
    txtTituloTextController?.dispose();

    txtDescricaoFocusNode?.dispose();
    txtDescricaoTextController?.dispose();

    txtResumoFocusNode?.dispose();
    txtResumoTextController?.dispose();

    txtPrazoFocusNode?.dispose();
    txtPrazoTextController?.dispose();
  }
}
