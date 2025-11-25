import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'edit_profile_photo_widget.dart' show EditProfilePhotoWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfilePhotoModel extends FlutterFlowModel<EditProfilePhotoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataImagettUsersr = false;
  FFUploadedFile uploadedLocalFile_uploadDataImagettUsersr =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataImagettUsersr = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsersRow>? outsucer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
