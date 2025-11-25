import '/backend/supabase/supabase.dart';
import '/components/back_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'create_comment_widget.dart' show CreateCommentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateCommentModel extends FlutterFlowModel<CreateCommentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Back component.
  late BackModel backModel;
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode;
  TextEditingController? shortBioTextController;
  String? Function(BuildContext, String?)? shortBioTextControllerValidator;

  @override
  void initState(BuildContext context) {
    backModel = createModel(context, () => BackModel());
  }

  @override
  void dispose() {
    backModel.dispose();
    shortBioFocusNode?.dispose();
    shortBioTextController?.dispose();
  }
}
