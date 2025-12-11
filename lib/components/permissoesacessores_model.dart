import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'permissoesacessores_widget.dart' show PermissoesacessoresWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PermissoesacessoresModel
    extends FlutterFlowModel<PermissoesacessoresWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  // State field(s) for txtTelefone widget.
  FocusNode? txtTelefoneFocusNode;
  TextEditingController? txtTelefoneTextController;
  late MaskTextInputFormatter txtTelefoneMask;
  String? Function(BuildContext, String?)? txtTelefoneTextControllerValidator;
  // State field(s) for txtCargo widget.
  FocusNode? txtCargoFocusNode;
  TextEditingController? txtCargoTextController;
  late MaskTextInputFormatter txtCargoMask;
  String? Function(BuildContext, String?)? txtCargoTextControllerValidator;
  // State field(s) for switchAtendimentos widget.
  bool? switchAtendimentosValue;
  // State field(s) for SwitchSolicitacoes widget.
  bool? switchSolicitacoesValue;
  // State field(s) for SwitchCidadaos widget.
  bool? switchCidadaosValue;
  // State field(s) for SwitchAtividades widget.
  bool? switchAtividadesValue;
  // State field(s) for transmissaoSwitch widget.
  bool? transmissaoSwitchValue;
  // State field(s) for SwitchDashboard widget.
  bool? switchDashboardValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtTelefoneFocusNode?.dispose();
    txtTelefoneTextController?.dispose();

    txtCargoFocusNode?.dispose();
    txtCargoTextController?.dispose();
  }
}
