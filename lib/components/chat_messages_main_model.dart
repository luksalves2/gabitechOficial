import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/modal_foto/modal_foto_widget.dart';
import '/components/modals_extra/carr_lista_whatsapp/carr_lista_whatsapp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'chat_messages_main_widget.dart' show ChatMessagesMainWidget;
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatMessagesMainModel extends FlutterFlowModel<ChatMessagesMainWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataPdftt = false;
  FFUploadedFile uploadedLocalFile_uploadDataPdftt =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataPdftt = '';

  // Stores action output result for [Backend Call - API (enviar Mensagens)] action in Row widget.
  ApiCallResponse? apiResuPdftt;
  bool isDataUploading_uploadDataImagett = false;
  FFUploadedFile uploadedLocalFile_uploadDataImagett =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataImagett = '';

  // Stores action output result for [Backend Call - API (enviar Mensagens)] action in Row widget.
  ApiCallResponse? apiResulImagett;
  bool isDataUploading_uploadDataVideott = false;
  FFUploadedFile uploadedLocalFile_uploadDataVideott =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataVideott = '';

  // Stores action output result for [Backend Call - API (enviar Mensagens)] action in Row widget.
  ApiCallResponse? apiResulVideott;
  bool isDataUploading_uploadDataAudiott = false;
  FFUploadedFile uploadedLocalFile_uploadDataAudiott =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataAudiott = '';

  // Stores action output result for [Backend Call - API (enviar Mensagens)] action in Row widget.
  ApiCallResponse? apiResultAudiott;
  Completer<List<VwCidadaoSolicitacoesContagemMsgRow>>? requestCompleter;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (enviar Mensagens)] action in TextField widget.
  ApiCallResponse? apiResultextCopy5;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
