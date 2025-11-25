import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'modal_cad_atividades_widget.dart' show ModalCadAtividadesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalCadAtividadesModel
    extends FlutterFlowModel<ModalCadAtividadesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldatv widget.
  FocusNode? textFieldatvFocusNode;
  TextEditingController? textFieldatvTextController;
  String? Function(BuildContext, String?)? textFieldatvTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  AtividadesMainRow? sucess;
  // State field(s) for Checkbox widget.
  Map<AtividadesMainRow, bool> checkboxValueMap = {};
  List<AtividadesMainRow> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldatvFocusNode?.dispose();
    textFieldatvTextController?.dispose();
  }
}
