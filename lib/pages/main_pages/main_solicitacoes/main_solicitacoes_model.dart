import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/modal_avancar_analise/modal_avancar_analise_widget.dart';
import '/components/modal_avancar_andamento/modal_avancar_andamento_widget.dart';
import '/components/modal_avancar_atraso/modal_avancar_atraso_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'main_solicitacoes_widget.dart' show MainSolicitacoesWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainSolicitacoesModel extends FlutterFlowModel<MainSolicitacoesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for TextnomeCidadao widget.
  FocusNode? textnomeCidadaoFocusNode;
  TextEditingController? textnomeCidadaoTextController;
  String? Function(BuildContext, String?)?
      textnomeCidadaoTextControllerValidator;
  // State field(s) for DropDownCategoriaAnalise widget.
  String? dropDownCategoriaAnaliseValue;
  FormFieldController<String>? dropDownCategoriaAnaliseValueController;
  // State field(s) for TextFieldNomeCidadaoAndamento widget.
  FocusNode? textFieldNomeCidadaoAndamentoFocusNode;
  TextEditingController? textFieldNomeCidadaoAndamentoTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeCidadaoAndamentoTextControllerValidator;
  // State field(s) for DropDownAndamento widget.
  String? dropDownAndamentoValue;
  FormFieldController<String>? dropDownAndamentoValueController;
  // State field(s) for TextFieldConcluidos widget.
  FocusNode? textFieldConcluidosFocusNode;
  TextEditingController? textFieldConcluidosTextController;
  String? Function(BuildContext, String?)?
      textFieldConcluidosTextControllerValidator;
  // State field(s) for DropDownConcluido widget.
  String? dropDownConcluidoValue;
  FormFieldController<String>? dropDownConcluidoValueController;
  // State field(s) for TextFieldemAtraso widget.
  FocusNode? textFieldemAtrasoFocusNode;
  TextEditingController? textFieldemAtrasoTextController;
  String? Function(BuildContext, String?)?
      textFieldemAtrasoTextControllerValidator;
  // State field(s) for DropDownAtraso widget.
  String? dropDownAtrasoValue;
  FormFieldController<String>? dropDownAtrasoValueController;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
    tabBarController?.dispose();
    textnomeCidadaoFocusNode?.dispose();
    textnomeCidadaoTextController?.dispose();

    textFieldNomeCidadaoAndamentoFocusNode?.dispose();
    textFieldNomeCidadaoAndamentoTextController?.dispose();

    textFieldConcluidosFocusNode?.dispose();
    textFieldConcluidosTextController?.dispose();

    textFieldemAtrasoFocusNode?.dispose();
    textFieldemAtrasoTextController?.dispose();
  }
}
