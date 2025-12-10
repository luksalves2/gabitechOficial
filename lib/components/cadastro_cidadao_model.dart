import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'cadastro_cidadao_widget.dart' show CadastroCidadaoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CadastroCidadaoModel extends FlutterFlowModel<CadastroCidadaoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtTelefone widget.
  FocusNode? txtTelefoneFocusNode;
  TextEditingController? txtTelefoneTextController;
  late MaskTextInputFormatter txtTelefoneMask;
  String? Function(BuildContext, String?)? txtTelefoneTextControllerValidator;
  // State field(s) for txtDataNascimento widget.
  FocusNode? txtDataNascimentoFocusNode;
  TextEditingController? txtDataNascimentoTextController;
  late MaskTextInputFormatter txtDataNascimentoMask;
  String? Function(BuildContext, String?)?
      txtDataNascimentoTextControllerValidator;
  // State field(s) for txtCep widget.
  FocusNode? txtCepFocusNode;
  TextEditingController? txtCepTextController;
  String? Function(BuildContext, String?)? txtCepTextControllerValidator;
  // Stores action output result for [Backend Call - API (Buscar dados CEP)] action in txtCep widget.
  ApiCallResponse? buscarCep;
  // State field(s) for txtRua widget.
  FocusNode? txtRuaFocusNode;
  TextEditingController? txtRuaTextController;
  String? Function(BuildContext, String?)? txtRuaTextControllerValidator;
  // State field(s) for txtBairro widget.
  FocusNode? txtBairroFocusNode;
  TextEditingController? txtBairroTextController;
  String? Function(BuildContext, String?)? txtBairroTextControllerValidator;
  // State field(s) for txtCidade widget.
  FocusNode? txtCidadeFocusNode;
  TextEditingController? txtCidadeTextController;
  String? Function(BuildContext, String?)? txtCidadeTextControllerValidator;
  // State field(s) for txtEstado widget.
  FocusNode? txtEstadoFocusNode;
  TextEditingController? txtEstadoTextController;
  String? Function(BuildContext, String?)? txtEstadoTextControllerValidator;
  // State field(s) for txtComplemento widget.
  FocusNode? txtComplementoFocusNode;
  TextEditingController? txtComplementoTextController;
  String? Function(BuildContext, String?)?
      txtComplementoTextControllerValidator;
  // State field(s) for txtRefrencia widget.
  FocusNode? txtRefrenciaFocusNode;
  TextEditingController? txtRefrenciaTextController;
  String? Function(BuildContext, String?)? txtRefrenciaTextControllerValidator;
  // State field(s) for dropgenero widget.
  String? dropgeneroValue;
  FormFieldController<String>? dropgeneroValueController;
  // State field(s) for txtPerfil widget.
  FocusNode? txtPerfilFocusNode;
  TextEditingController? txtPerfilTextController;
  String? Function(BuildContext, String?)? txtPerfilTextControllerValidator;
  // State field(s) for dropAcessor widget.
  int? dropAcessorValue;
  FormFieldController<int>? dropAcessorValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtTelefoneFocusNode?.dispose();
    txtTelefoneTextController?.dispose();

    txtDataNascimentoFocusNode?.dispose();
    txtDataNascimentoTextController?.dispose();

    txtCepFocusNode?.dispose();
    txtCepTextController?.dispose();

    txtRuaFocusNode?.dispose();
    txtRuaTextController?.dispose();

    txtBairroFocusNode?.dispose();
    txtBairroTextController?.dispose();

    txtCidadeFocusNode?.dispose();
    txtCidadeTextController?.dispose();

    txtEstadoFocusNode?.dispose();
    txtEstadoTextController?.dispose();

    txtComplementoFocusNode?.dispose();
    txtComplementoTextController?.dispose();

    txtRefrenciaFocusNode?.dispose();
    txtRefrenciaTextController?.dispose();

    txtPerfilFocusNode?.dispose();
    txtPerfilTextController?.dispose();
  }
}
