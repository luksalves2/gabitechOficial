import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/modal_q_rcode_zap/modal_q_rcode_zap_widget.dart';
import '/components/modals/command_palette/command_palette_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'main_profile_page_admin_widget.dart' show MainProfilePageAdminWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainProfilePageAdminModel
    extends FlutterFlowModel<MainProfilePageAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (status conexo whatsapp)] action in mainProfilePageAdmin widget.
  ApiCallResponse? outconexaoStatusPerfilIni;
  // Model for webNav component.
  late WebNavModel webNavModel;
  bool isDataUploading_uploadDataImagettUsers = false;
  FFUploadedFile uploadedLocalFile_uploadDataImagettUsers =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataImagettUsers = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<UsersRow>? outsucessoImage;
  // Stores action output result for [Backend Call - API (status conexo whatsapp)] action in Button widget.
  ApiCallResponse? outconexaoStatusPerfil;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
  }
}
