import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/novas_paginas/editar_tarefa/editar_tarefa_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'detalhes_solicitacoes_widget.dart' show DetalhesSolicitacoesWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetalhesSolicitacoesModel
    extends FlutterFlowModel<DetalhesSolicitacoesWidget> {
  ///  Local state fields for this component.

  String? menu;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<NotasRow>? buscarNotas;
  Completer<List<SolicitacoesRow>>? requestCompleter3;
  // State field(s) for txtDescricao widget.
  FocusNode? txtDescricaoFocusNode;
  TextEditingController? txtDescricaoTextController;
  String? Function(BuildContext, String?)? txtDescricaoTextControllerValidator;
  Completer<List<NotasRow>>? requestCompleter1;
  // State field(s) for txtTarefaTitulo widget.
  FocusNode? txtTarefaTituloFocusNode;
  TextEditingController? txtTarefaTituloTextController;
  String? Function(BuildContext, String?)?
      txtTarefaTituloTextControllerValidator;
  // State field(s) for txtTarefaDescricao widget.
  FocusNode? txtTarefaDescricaoFocusNode;
  TextEditingController? txtTarefaDescricaoTextController;
  String? Function(BuildContext, String?)?
      txtTarefaDescricaoTextControllerValidator;
  Completer<List<TarefasRow>>? requestCompleter2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtDescricaoFocusNode?.dispose();
    txtDescricaoTextController?.dispose();

    txtTarefaTituloFocusNode?.dispose();
    txtTarefaTituloTextController?.dispose();

    txtTarefaDescricaoFocusNode?.dispose();
    txtTarefaDescricaoTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
