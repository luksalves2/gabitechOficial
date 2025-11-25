import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/modals/modal_vinc_categoria_ativ/modal_vinc_categoria_ativ_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'modal_cad_categorias_widget.dart' show ModalCadCategoriasWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalCadCategoriasModel
    extends FlutterFlowModel<ModalCadCategoriasWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldCategorias widget.
  FocusNode? textFieldCategoriasFocusNode;
  TextEditingController? textFieldCategoriasTextController;
  String? Function(BuildContext, String?)?
      textFieldCategoriasTextControllerValidator;
  // State field(s) for TextFieldDescricao widget.
  FocusNode? textFieldDescricaoFocusNode;
  TextEditingController? textFieldDescricaoTextController;
  String? Function(BuildContext, String?)?
      textFieldDescricaoTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  CategoriasRow? sucess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldCategoriasFocusNode?.dispose();
    textFieldCategoriasTextController?.dispose();

    textFieldDescricaoFocusNode?.dispose();
    textFieldDescricaoTextController?.dispose();
  }
}
