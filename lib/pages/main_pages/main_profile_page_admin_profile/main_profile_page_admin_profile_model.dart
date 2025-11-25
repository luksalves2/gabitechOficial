import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/modal_cad_usuario/modal_cad_usuario_widget.dart';
import '/components/modals/command_palette/command_palette_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'main_profile_page_admin_profile_widget.dart'
    show MainProfilePageAdminProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainProfilePageAdminProfileModel
    extends FlutterFlowModel<MainProfilePageAdminProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in mainProfilePageAdminProfile widget.
  List<UsersRow>? outUserPerfil;
  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for Checkbox widget.
  Map<UsersRow, bool> checkboxValueMap1 = {};
  List<UsersRow> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<UsersRow, bool> checkboxValueMap2 = {};
  List<UsersRow> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<UsersRow, bool> checkboxValueMap3 = {};
  List<UsersRow> get checkboxCheckedItems3 => checkboxValueMap3.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<UsersRow, bool> checkboxValueMap4 = {};
  List<UsersRow> get checkboxCheckedItems4 => checkboxValueMap4.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<UsersRow, bool> checkboxValueMap5 = {};
  List<UsersRow> get checkboxCheckedItems5 => checkboxValueMap5.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Stores action output result for [Backend Call - Update Row(s)] action in Checkbox widget.
  List<UsersRow>? resultAtividades;
  // State field(s) for Checkbox widget.
  Map<UsersRow, bool> checkboxValueMap6 = {};
  List<UsersRow> get checkboxCheckedItems6 => checkboxValueMap6.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<UsersRow, bool> checkboxValueMap7 = {};
  List<UsersRow> get checkboxCheckedItems7 => checkboxValueMap7.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<UsersRow, bool> checkboxValueMap8 = {};
  List<UsersRow> get checkboxCheckedItems8 => checkboxValueMap8.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
