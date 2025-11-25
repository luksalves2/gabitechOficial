import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'modal_cria_solicitacao_widget.dart' show ModalCriaSolicitacaoWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ModalCriaSolicitacaoModel
    extends FlutterFlowModel<ModalCriaSolicitacaoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  String? _descricaoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7091m1fx' /* Descrição é obrigatória */,
      );
    }

    return null;
  }

  // State field(s) for resumo widget.
  FocusNode? resumoFocusNode;
  TextEditingController? resumoTextController;
  String? Function(BuildContext, String?)? resumoTextControllerValidator;
  // State field(s) for DropDownAcessor widget.
  String? dropDownAcessorValue;
  FormFieldController<String>? dropDownAcessorValueController;
  // State field(s) for dataPrazoFinal widget.
  FocusNode? dataPrazoFinalFocusNode;
  TextEditingController? dataPrazoFinalTextController;
  late MaskTextInputFormatter dataPrazoFinalMask;
  String? Function(BuildContext, String?)?
      dataPrazoFinalTextControllerValidator;
  // State field(s) for DropDownPrioridade widget.
  String? dropDownPrioridadeValue;
  FormFieldController<String>? dropDownPrioridadeValueController;
  // State field(s) for DropDownCategoria widget.
  String? dropDownCategoriaValue;
  FormFieldController<String>? dropDownCategoriaValueController;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? outAcessor;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CategoriasRow>? outCategoria;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  SolicitacoesRow? oltRetornoBnaco;

  @override
  void initState(BuildContext context) {
    descricaoTextControllerValidator = _descricaoTextControllerValidator;
  }

  @override
  void dispose() {
    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    resumoFocusNode?.dispose();
    resumoTextController?.dispose();

    dataPrazoFinalFocusNode?.dispose();
    dataPrazoFinalTextController?.dispose();
  }
}
