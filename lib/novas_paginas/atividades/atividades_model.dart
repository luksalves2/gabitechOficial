import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/novas_paginas/criar_categoria/criar_categoria_widget.dart';
import '/novas_paginas/criar_tarefa/criar_tarefa_widget.dart';
import '/novas_paginas/editar_categoria/editar_categoria_widget.dart';
import '/novas_paginas/editar_tarefa/editar_tarefa_widget.dart';
import 'dart:ui';
import 'atividades_widget.dart' show AtividadesWidget;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtividadesModel extends FlutterFlowModel<AtividadesWidget> {
  ///  Local state fields for this page.

  String? status;

  String? menu;

  ///  State fields for stateful widgets in this page.

  // Model for menu component.
  late MenuModel menuModel;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for txtPesquisar widget.
  FocusNode? txtPesquisarFocusNode;
  TextEditingController? txtPesquisarTextController;
  String? Function(BuildContext, String?)? txtPesquisarTextControllerValidator;
  // State field(s) for dropSelecionarCategoria widget.
  String? dropSelecionarCategoriaValue;
  FormFieldController<String>? dropSelecionarCategoriaValueController;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    txtPesquisarFocusNode?.dispose();
    txtPesquisarTextController?.dispose();
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
