import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'atualizar_senha_widget.dart' show AtualizarSenhaWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtualizarSenhaModel extends FlutterFlowModel<AtualizarSenhaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNovaSenha widget.
  FocusNode? txtNovaSenhaFocusNode;
  TextEditingController? txtNovaSenhaTextController;
  String? Function(BuildContext, String?)? txtNovaSenhaTextControllerValidator;
  // State field(s) for txtConfirmarSenha widget.
  FocusNode? txtConfirmarSenhaFocusNode;
  TextEditingController? txtConfirmarSenhaTextController;
  String? Function(BuildContext, String?)?
      txtConfirmarSenhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (Atualizar Senha)] action in Button widget.
  ApiCallResponse? atualizarSenha;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNovaSenhaFocusNode?.dispose();
    txtNovaSenhaTextController?.dispose();

    txtConfirmarSenhaFocusNode?.dispose();
    txtConfirmarSenhaTextController?.dispose();
  }
}
