import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cadastrar_acessor_widget.dart';
import '/components/menu_widget.dart';
import '/components/permissoesacessores_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'acessores_widget.dart' show AcessoresWidget;
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AcessoresModel extends FlutterFlowModel<AcessoresWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menu component.
  late MenuModel menuModel;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
