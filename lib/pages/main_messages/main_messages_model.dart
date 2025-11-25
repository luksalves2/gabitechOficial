import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/chat_messages_main_widget.dart';
import '/components/modal_cria_solicitacao/modal_cria_solicitacao_widget.dart';
import '/components/modal_q_rcode_zap/modal_q_rcode_zap_widget.dart';
import '/components/modals/modal_create_mensagem/modal_create_mensagem_widget.dart';
import '/components/modals_extra/carregamento_lista_vazia/carregamento_lista_vazia_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'main_messages_widget.dart' show MainMessagesWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class MainMessagesModel extends FlutterFlowModel<MainMessagesWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (status conexo whatsapp)] action in Main_messages widget.
  ApiCallResponse? outconexaoStatusMsg;
  // Model for webNav component.
  late WebNavModel webNavModel;
  Stream<List<ChatsWhatsappRow>>? resultadoGeralChatSupabaseStream;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<ChatsWhatsappRow>? outchatw;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<AvatarWhatsappRow>? outavatar;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<SolicitacoesCidadoesRow>? resultSolicitacao;
  // Model for chatMessages_main component.
  late ChatMessagesMainModel chatMessagesMainModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ti022x1b' /* Resumo is required */,
      );
    }

    return null;
  }

  // State field(s) for TextNomeCidadao widget.
  FocusNode? textNomeCidadaoFocusNode;
  TextEditingController? textNomeCidadaoTextController;
  String? Function(BuildContext, String?)?
      textNomeCidadaoTextControllerValidator;
  String? _textNomeCidadaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'c9x6xqum' /* msgNomeCidadao is required */,
      );
    }

    return null;
  }

  // State field(s) for TextDataNascimento widget.
  FocusNode? textDataNascimentoFocusNode;
  TextEditingController? textDataNascimentoTextController;
  late MaskTextInputFormatter textDataNascimentoMask;
  String? Function(BuildContext, String?)?
      textDataNascimentoTextControllerValidator;
  String? _textDataNascimentoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        't9objo6y' /* Data de nascimento is required */,
      );
    }

    return null;
  }

  // State field(s) for TextPerfil widget.
  FocusNode? textPerfilFocusNode;
  TextEditingController? textPerfilTextController;
  String? Function(BuildContext, String?)? textPerfilTextControllerValidator;
  // State field(s) for TextEmail widget.
  FocusNode? textEmailFocusNode;
  TextEditingController? textEmailTextController;
  String? Function(BuildContext, String?)? textEmailTextControllerValidator;
  // State field(s) for DropDownGenero widget.
  String? dropDownGeneroValue;
  FormFieldController<String>? dropDownGeneroValueController;
  // State field(s) for DropDownUser widget.
  String? dropDownUserValue;
  FormFieldController<String>? dropDownUserValueController;
  // State field(s) for TextFieldCEP widget.
  FocusNode? textFieldCEPFocusNode;
  TextEditingController? textFieldCEPTextController;
  String? Function(BuildContext, String?)? textFieldCEPTextControllerValidator;
  String? _textFieldCEPTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9i9uznv5' /* CEP is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Buscar dados CEP)] action in TextFieldCEP widget.
  ApiCallResponse? apiResultCep;
  // State field(s) for TextFieldRua widget.
  FocusNode? textFieldRuaFocusNode;
  TextEditingController? textFieldRuaTextController;
  String? Function(BuildContext, String?)? textFieldRuaTextControllerValidator;
  String? _textFieldRuaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'jpjzjjvq' /* msgLogradouro is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldCidade widget.
  FocusNode? textFieldCidadeFocusNode;
  TextEditingController? textFieldCidadeTextController;
  String? Function(BuildContext, String?)?
      textFieldCidadeTextControllerValidator;
  String? _textFieldCidadeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'pdg9qjuh' /* Cidade is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldBairro widget.
  FocusNode? textFieldBairroFocusNode;
  TextEditingController? textFieldBairroTextController;
  String? Function(BuildContext, String?)?
      textFieldBairroTextControllerValidator;
  String? _textFieldBairroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7qd3fdr6' /* Bairro is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldUF widget.
  FocusNode? textFieldUFFocusNode;
  TextEditingController? textFieldUFTextController;
  String? Function(BuildContext, String?)? textFieldUFTextControllerValidator;
  String? _textFieldUFTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'l3v3bqm3' /* UF is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldNumero widget.
  FocusNode? textFieldNumeroFocusNode;
  TextEditingController? textFieldNumeroTextController;
  String? Function(BuildContext, String?)?
      textFieldNumeroTextControllerValidator;
  String? _textFieldNumeroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wtdpbl8o' /* Número is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldComplemento widget.
  FocusNode? textFieldComplementoFocusNode;
  TextEditingController? textFieldComplementoTextController;
  String? Function(BuildContext, String?)?
      textFieldComplementoTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<CidadaosRow>? outResultinsertCidadao;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    chatMessagesMainModel = createModel(context, () => ChatMessagesMainModel());
    textController1Validator = _textController1Validator;
    textNomeCidadaoTextControllerValidator =
        _textNomeCidadaoTextControllerValidator;
    textDataNascimentoTextControllerValidator =
        _textDataNascimentoTextControllerValidator;
    textFieldCEPTextControllerValidator = _textFieldCEPTextControllerValidator;
    textFieldRuaTextControllerValidator = _textFieldRuaTextControllerValidator;
    textFieldCidadeTextControllerValidator =
        _textFieldCidadeTextControllerValidator;
    textFieldBairroTextControllerValidator =
        _textFieldBairroTextControllerValidator;
    textFieldUFTextControllerValidator = _textFieldUFTextControllerValidator;
    textFieldNumeroTextControllerValidator =
        _textFieldNumeroTextControllerValidator;
  }

  @override
  void dispose() {
    webNavModel.dispose();
    chatMessagesMainModel.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    textNomeCidadaoFocusNode?.dispose();
    textNomeCidadaoTextController?.dispose();

    textDataNascimentoFocusNode?.dispose();
    textDataNascimentoTextController?.dispose();

    textPerfilFocusNode?.dispose();
    textPerfilTextController?.dispose();

    textEmailFocusNode?.dispose();
    textEmailTextController?.dispose();

    textFieldCEPFocusNode?.dispose();
    textFieldCEPTextController?.dispose();

    textFieldRuaFocusNode?.dispose();
    textFieldRuaTextController?.dispose();

    textFieldCidadeFocusNode?.dispose();
    textFieldCidadeTextController?.dispose();

    textFieldBairroFocusNode?.dispose();
    textFieldBairroTextController?.dispose();

    textFieldUFFocusNode?.dispose();
    textFieldUFTextController?.dispose();

    textFieldNumeroFocusNode?.dispose();
    textFieldNumeroTextController?.dispose();

    textFieldComplementoFocusNode?.dispose();
    textFieldComplementoTextController?.dispose();
  }
}
