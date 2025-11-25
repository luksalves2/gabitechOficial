import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'modal_cad_usuario_widget.dart' show ModalCadUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalCadUsuarioModel extends FlutterFlowModel<ModalCadUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularTextController;
  String? Function(BuildContext, String?)? celularTextControllerValidator;
  String? _celularTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        's6tgngsy' /* Celular é Obrigatório! */,
      );
    }

    return null;
  }

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  String? _nomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'l4jc6wbu' /* Nome é Obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7r3tlm4s' /* Email é Obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for CheckboxVisao widget.
  bool? checkboxVisaoValue;
  // State field(s) for CheckboxSolicitacao widget.
  bool? checkboxSolicitacaoValue;
  // State field(s) for CheckboxMensagem widget.
  bool? checkboxMensagemValue;
  // State field(s) for CheckboxCidadao widget.
  bool? checkboxCidadaoValue;
  // State field(s) for CheckboxAtividade widget.
  bool? checkboxAtividadeValue;
  // State field(s) for CheckboxAniver widget.
  bool? checkboxAniverValue;
  // State field(s) for CheckboxMapa widget.
  bool? checkboxMapaValue;
  // State field(s) for CheckboxPerfil widget.
  bool? checkboxPerfilValue;
  // State field(s) for Checkboxtyutorial widget.
  bool? checkboxtyutorialValue;
  // State field(s) for Checkboxtransmissoes widget.
  bool? checkboxtransmissoesValue;
  // State field(s) for Checkbonotific widget.
  bool? checkbonotificValue;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  String? _senhaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'pt8flr8a' /* Senha é Obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for confirmeSenha widget.
  FocusNode? confirmeSenhaFocusNode;
  TextEditingController? confirmeSenhaTextController;
  late bool confirmeSenhaVisibility;
  String? Function(BuildContext, String?)? confirmeSenhaTextControllerValidator;
  String? _confirmeSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '85gvvb8m' /* Confirme sua senha é Obrigatór... */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (inserir usuario users)] action in Button widget.
  ApiCallResponse? resultinsertUsuario;

  @override
  void initState(BuildContext context) {
    celularTextControllerValidator = _celularTextControllerValidator;
    nomeTextControllerValidator = _nomeTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    senhaVisibility = false;
    senhaTextControllerValidator = _senhaTextControllerValidator;
    confirmeSenhaVisibility = false;
    confirmeSenhaTextControllerValidator =
        _confirmeSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    celularFocusNode?.dispose();
    celularTextController?.dispose();

    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    confirmeSenhaFocusNode?.dispose();
    confirmeSenhaTextController?.dispose();
  }
}
