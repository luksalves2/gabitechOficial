import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/menu_widget.dart';
import '/components/solicitacoes_componente_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'solicitacoes_widget.dart' show SolicitacoesWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class SolicitacoesModel extends FlutterFlowModel<SolicitacoesWidget> {
  ///  Local state fields for this page.

  String? prioridade;

  int? idSolicitacao;

  ///  State fields for stateful widgets in this page.

  // Model for menu component.
  late MenuModel menuModel;
  Completer<List<SolicitacoesRow>>? requestCompleter;
  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode1;
  TextEditingController? txtTituloTextController1;
  String? Function(BuildContext, String?)? txtTituloTextController1Validator;
  // State field(s) for dropCidadao widget.
  int? dropCidadaoValue;
  FormFieldController<int>? dropCidadaoValueController;
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
  late MaskTextInputFormatter txtTituloMask2;
  String? Function(BuildContext, String?)? txtTituloTextController2Validator;
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
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    txtTituloFocusNode1?.dispose();
    txtTituloTextController1?.dispose();

    txtDescricaoFocusNode?.dispose();
    txtDescricaoTextController?.dispose();

    txtResumoFocusNode?.dispose();
    txtResumoTextController?.dispose();

    txtTituloFocusNode2?.dispose();
    txtTituloTextController2?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
