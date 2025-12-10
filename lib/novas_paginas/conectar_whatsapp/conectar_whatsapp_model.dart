import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'conectar_whatsapp_widget.dart' show ConectarWhatsappWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ConectarWhatsappModel extends FlutterFlowModel<ConectarWhatsappWidget> {
  ///  Local state fields for this component.

  String? token;

  String? status;

  String? codigo;

  ///  State fields for stateful widgets in this component.

  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloTextController;
  String? Function(BuildContext, String?)? txtTituloTextControllerValidator;
  // State field(s) for txtTelefone widget.
  FocusNode? txtTelefoneFocusNode;
  TextEditingController? txtTelefoneTextController;
  late MaskTextInputFormatter txtTelefoneMask;
  String? Function(BuildContext, String?)? txtTelefoneTextControllerValidator;
  // Stores action output result for [Backend Call - API (Criar Instancia)] action in Button widget.
  ApiCallResponse? criarInstancia;
  // Stores action output result for [Backend Call - API (Conectar Instancia)] action in Button widget.
  ApiCallResponse? conectarInstancia;
  // Stores action output result for [Backend Call - API (Status Instancia)] action in Button widget.
  ApiCallResponse? statusInstancia;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtTituloFocusNode?.dispose();
    txtTituloTextController?.dispose();

    txtTelefoneFocusNode?.dispose();
    txtTelefoneTextController?.dispose();
  }
}
