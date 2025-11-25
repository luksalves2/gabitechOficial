import '/backend/supabase/supabase.dart';
import '/components/task_card_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'main_solicitacoes_kanban_widget.dart' show MainSolicitacoesKanbanWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainSolicitacoesKanbanModel
    extends FlutterFlowModel<MainSolicitacoesKanbanWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Main_solicitacoesKanban widget.
  List<VwSolicitacoesKpisRow>? outsolicitacaoContagem;
  // Model for webNav component.
  late WebNavModel webNavModel;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<SolicitacoesRow>? outSolitCancelado;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<SolicitacoesRow>? ousatrasofinalidao;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<SolicitacoesRow>? outprogramado;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<SolicitacoesRow>? outaguardando;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
  }
}
