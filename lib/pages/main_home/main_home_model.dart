import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/modal_q_rcode_zap/modal_q_rcode_zap_widget.dart';
import '/components/modals_extra/carr_lista_aniver/carr_lista_aniver_widget.dart';
import '/components/modals_extra/carr_lista_cidadao/carr_lista_cidadao_widget.dart';
import '/components/modals_extra/carr_lista_semanal/carr_lista_semanal_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'main_home_widget.dart' show MainHomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class MainHomeModel extends FlutterFlowModel<MainHomeWidget> {
  ///  Local state fields for this page.

  List<XBarLabelsStruct> chartData = [];
  void addToChartData(XBarLabelsStruct item) => chartData.add(item);
  void removeFromChartData(XBarLabelsStruct item) => chartData.remove(item);
  void removeAtIndexFromChartData(int index) => chartData.removeAt(index);
  void insertAtIndexInChartData(int index, XBarLabelsStruct item) =>
      chartData.insert(index, item);
  void updateChartDataAtIndex(int index, Function(XBarLabelsStruct) updateFn) =>
      chartData[index] = updateFn(chartData[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Main_Home widget.
  List<UsersRow>? resultUser;
  // Stores action output result for [Backend Call - Query Rows] action in Main_Home widget.
  List<DashboardNumerosContadosListaRow>? outListaDashboard;
  // Stores action output result for [Backend Call - API (lista contagem mes)] action in Main_Home widget.
  ApiCallResponse? outListMes;
  // Stores action output result for [Backend Call - API (lista home)] action in Main_Home widget.
  ApiCallResponse? outListcontHome;
  // Stores action output result for [Backend Call - API (status conexo whatsapp)] action in Main_Home widget.
  ApiCallResponse? outconexaoStatusx;
  // Model for webNav component.
  late WebNavModel webNavModel;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
  }
}
