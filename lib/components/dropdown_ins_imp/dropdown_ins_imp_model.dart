import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/modal_edit_cad_cidadao/modal_edit_cad_cidadao_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dropdown_ins_imp_widget.dart' show DropdownInsImpWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DropdownInsImpModel extends FlutterFlowModel<DropdownInsImpWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  bool isDataUploading_uploadDataPdfttdd = false;
  FFUploadedFile uploadedLocalFile_uploadDataPdfttdd =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataPdfttdd = '';

  // Stores action output result for [Backend Call - API (import CSV google)] action in convertComponent widget.
  ApiCallResponse? apiResultisw;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
