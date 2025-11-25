import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'modal_vinc_categoria_ativ_widget.dart'
    show ModalVincCategoriaAtivWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalVincCategoriaAtivModel
    extends FlutterFlowModel<ModalVincCategoriaAtivWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  Map<AtividadesCategoriasRow, bool> checkboxValueMap1 = {};
  List<AtividadesCategoriasRow> get checkboxCheckedItems1 =>
      checkboxValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Backend Call - Update Row(s)] action in Checkbox widget.
  List<AtividadesCategoriasRow>? ontoffz;
  // State field(s) for Checkbox widget.
  Map<AtividadesMainRow, bool> checkboxValueMap2 = {};
  List<AtividadesMainRow> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Stores action output result for [Backend Call - Insert Row] action in Checkbox widget.
  AtividadesCategoriasRow? onTon;
  // Stores action output result for [Backend Call - Update Row(s)] action in Checkbox widget.
  List<AtividadesCategoriasRow>? ontoff;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
