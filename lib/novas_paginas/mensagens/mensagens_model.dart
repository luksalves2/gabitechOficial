import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/criar_solicitacao_cidadao_widget.dart';
import '/components/editar_cidadao_widget.dart';
import '/components/editar_solicitacao_widget.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/novas_paginas/criar_nota_solicitacao/criar_nota_solicitacao_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'mensagens_widget.dart' show MensagensWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class MensagensModel extends FlutterFlowModel<MensagensWidget> {
  ///  Local state fields for this page.

  int? atendimentoSelecionado;

  String? enviarArquivos;

  String? menuChat;

  String? imagemSelecionada;

  String? video;

  String? documento;

  int? limite;

  int? limiteMensagens;

  String? prioridade;

  int? cidadao;

  String? conversaSelecionada;

  ///  State fields for stateful widgets in this page.

  Completer<ApiCallResponse>? apiRequestCompleter;
  Completer<List<MensagensRow>>? requestCompleter3;
  // Model for menu component.
  late MenuModel menuModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for colunaChats widget.
  ScrollController? colunaChatsScrollController;
  Completer<List<AtendimentosRow>>? requestCompleter2;
  Completer<List<CidadaosRow>>? requestCompleter4;
  Completer<List<SolicitacoesRow>>? requestCompleter1;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for listviewMensagens widget.
  ScrollController? listviewMensagensScrollController;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  bool isDataUploading_uploadImagem = false;
  FFUploadedFile uploadedLocalFile_uploadImagem =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadImagem = '';

  // Stores action output result for [Backend Call - API (Enviar Imagem)] action in Row widget.
  ApiCallResponse? enviarImagem;
  bool isDataUploading_uploadVideo = false;
  FFUploadedFile uploadedLocalFile_uploadVideo =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadVideo = '';

  // Stores action output result for [Backend Call - API (Enviar Video)] action in Row widget.
  ApiCallResponse? enviarVideo;
  bool isDataUploading_uploadDocumento = false;
  FFUploadedFile uploadedLocalFile_uploadDocumento =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDocumento = '';

  // Stores action output result for [Backend Call - API (Enviar Documento)] action in Row widget.
  ApiCallResponse? enviarDocumento;
  // State field(s) for txtEnviarTexto widget.
  FocusNode? txtEnviarTextoFocusNode;
  TextEditingController? txtEnviarTextoTextController;
  String? Function(BuildContext, String?)?
      txtEnviarTextoTextControllerValidator;
  // Stores action output result for [Backend Call - API (Enviar Mensagem)] action in txtEnviarTexto widget.
  ApiCallResponse? enviarMensagem2;
  // State field(s) for Column widget.
  ScrollController? columnController3;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    colunaChatsScrollController = ScrollController();
    columnController1 = ScrollController();
    listviewMensagensScrollController = ScrollController();
    columnController2 = ScrollController();
    columnController3 = ScrollController();
  }

  @override
  void dispose() {
    menuModel.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    colunaChatsScrollController?.dispose();
    columnController1?.dispose();
    listviewMensagensScrollController?.dispose();
    columnController2?.dispose();
    txtEnviarTextoFocusNode?.dispose();
    txtEnviarTextoTextController?.dispose();

    columnController3?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
