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
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_messages_main_model.dart';
export 'chat_messages_main_model.dart';

class ChatMessagesMainWidget extends StatefulWidget {
  const ChatMessagesMainWidget({
    super.key,
    required this.phone,
    required this.rebuildkey,
    required this.cidadaoID,
  });

  final String? phone;
  final String? rebuildkey;
  final String? cidadaoID;

  @override
  State<ChatMessagesMainWidget> createState() => _ChatMessagesMainWidgetState();
}

class _ChatMessagesMainWidgetState extends State<ChatMessagesMainWidget>
    with TickerProviderStateMixin {
  late ChatMessagesMainModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatMessagesMainModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'listViewOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 6000.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(4.0, 4.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
            child: Material(
              color: Colors.transparent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF2F4F7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).accent1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 10.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 7.0, 0.0, 0.0),
                              child: Container(
                                width: 200.0,
                                height: 200.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    FFAppState().msgAvatarUrl,
                                    'https://xwwzsqjgksomniwkvznc.supabase.co/storage/v1/object/sign/imgsistema/ImagemSem.jpeg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9mZTFlNWFhNS1kZmU1LTQ2Y2UtOTFlYy04MDczODg2ZjUyNjkiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJpbWdzaXN0ZW1hL0ltYWdlbVNlbS5qcGVnIiwiaWF0IjoxNzUyMDcyMTAyLCJleHAiOjE4MTUxNDQxMDJ9.-ZxxQX2UewoteIepTDqD8s30AQupMa-oSnD2AqJ-5iY',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              functions
                                  .formatarPhoneOuGrupo(FFAppState().msgPhone),
                              'Sem dados',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.plusJakartaSans(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 5.0),
                            child: Text(
                              FFAppState().nomeCidadao,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 140.0,
                      child: VerticalDivider(
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 250.0,
                              child: Divider(
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    25.0, 0.0, 0.0, 0.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Container(
                                    width: 182.86,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '9p4y2a3b' /* Resumo atendimento */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if (widget!.cidadaoID != null &&
                                widget!.cidadaoID != '')
                              Container(
                                width: 200.0,
                                child: Visibility(
                                  visible: widget!.cidadaoID != null &&
                                      widget!.cidadaoID != '',
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 5.0, 0.0, 4.0),
                                    child: FutureBuilder<
                                        List<
                                            VwCidadaoSolicitacoesContagemMsgRow>>(
                                      future: (_model.requestCompleter ??= Completer<
                                              List<
                                                  VwCidadaoSolicitacoesContagemMsgRow>>()
                                            ..complete(
                                                VwCidadaoSolicitacoesContagemMsgTable()
                                                    .queryRows(
                                              queryFn: (q) => q
                                                  .eqOrNull(
                                                    'gabinete_id',
                                                    FFAppState().gabineteId,
                                                  )
                                                  .eqOrNull(
                                                    'cidadao_id',
                                                    widget!.cidadaoID,
                                                  )
                                                  .order('status_nome',
                                                      ascending: true),
                                            )))
                                          .future,
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<VwCidadaoSolicitacoesContagemMsgRow>
                                            listViewVwCidadaoSolicitacoesContagemMsgRowList =
                                            snapshot.data!;

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewVwCidadaoSolicitacoesContagemMsgRowList
                                                  .length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewVwCidadaoSolicitacoesContagemMsgRow =
                                                listViewVwCidadaoSolicitacoesContagemMsgRowList[
                                                    listViewIndex];
                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        '${listViewVwCidadaoSolicitacoesContagemMsgRow.statusNome}:  ${valueOrDefault<String>(
                                                          listViewVwCidadaoSolicitacoesContagemMsgRow
                                                              .valor
                                                              ?.toString(),
                                                          'Sem entradas',
                                                        )}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .plusJakartaSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      SizedBox(
                                                        width: 150.0,
                                                        child: Divider(
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: Material(
                color: Colors.transparent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://xwwzsqjgksomniwkvznc.supabase.co/storage/v1/object/sign/imgsistema/whats_fundo.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9mZTFlNWFhNS1kZmU1LTQ2Y2UtOTFlYy04MDczODg2ZjUyNjkiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJpbWdzaXN0ZW1hL3doYXRzX2Z1bmRvLmpwZyIsImlhdCI6MTc1MjY4NzM4OCwiZXhwIjoxNzg0MjIzMzg4fQ.5VXxiAlZ4zzrfCnt9fJT7MRJAp1avxf78FV5fWEhIhc',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: FutureBuilder<List<MensagensWhatsappRow>>(
                            future: MensagensWhatsappTable().queryRows(
                              queryFn: (q) => q
                                  .eqOrNull(
                                    'phone',
                                    widget!.phone,
                                  )
                                  .eqOrNull(
                                    'gabinete_id',
                                    FFAppState().gabineteId,
                                  )
                                  .order('created_at'),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<MensagensWhatsappRow>
                                  listResultado2MensagensWhatsappRowList =
                                  snapshot.data!;

                              if (listResultado2MensagensWhatsappRowList
                                  .isEmpty) {
                                return CarrListaWhatsappWidget();
                              }

                              return ListView.builder(
                                padding: EdgeInsets.fromLTRB(
                                  0,
                                  12.0,
                                  0,
                                  44.0,
                                ),
                                reverse: true,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                    listResultado2MensagensWhatsappRowList
                                        .length,
                                itemBuilder: (context, listResultado2Index) {
                                  final listResultado2MensagensWhatsappRow =
                                      listResultado2MensagensWhatsappRowList[
                                          listResultado2Index];
                                  return Container(
                                    width: 152.2,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 40.0, 4.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Builder(
                                                          builder: (context) {
                                                            if (!listResultado2MensagensWhatsappRow
                                                                .fromMe!) {
                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    width:
                                                                        300.0,
                                                                    constraints:
                                                                        BoxConstraints(
                                                                      maxWidth:
                                                                          valueOrDefault<
                                                                              double>(
                                                                        () {
                                                                          if ((MediaQuery.sizeOf(context).width >= 1270.0) &&
                                                                              !listResultado2MensagensWhatsappRow
                                                                                  .fromMe!) {
                                                                            return 700.0;
                                                                          } else if ((MediaQuery.sizeOf(context).width >= 1270.0) &&
                                                                              listResultado2MensagensWhatsappRow.fromMe!) {
                                                                            return 900.0;
                                                                          } else {
                                                                            return 320.0;
                                                                          }
                                                                        }(),
                                                                        700.0,
                                                                      ),
                                                                    ),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: !listResultado2MensagensWhatsappRow.fromMe!
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .secondaryBackground
                                                                          : FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              3.0,
                                                                          color:
                                                                              Color(0x33000000),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            1.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(0.0),
                                                                        bottomRight:
                                                                            Radius.circular(12.0),
                                                                        topLeft:
                                                                            Radius.circular(12.0),
                                                                        topRight:
                                                                            Radius.circular(12.0),
                                                                      ),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: !listResultado2MensagensWhatsappRow.fromMe!
                                                                            ? FlutterFlowTheme.of(context).alternate
                                                                            : FlutterFlowTheme.of(context).accent1,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              300.0,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(8.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Builder(
                                                                                  builder: (context) {
                                                                                    if (listResultado2MensagensWhatsappRow.textMessage != null && listResultado2MensagensWhatsappRow.textMessage != '') {
                                                                                      return Container(
                                                                                        width: 350.0,
                                                                                        decoration: BoxDecoration(),
                                                                                        child: Wrap(
                                                                                          spacing: 0.0,
                                                                                          runSpacing: 0.0,
                                                                                          alignment: WrapAlignment.start,
                                                                                          crossAxisAlignment: WrapCrossAlignment.start,
                                                                                          direction: Axis.horizontal,
                                                                                          runAlignment: WrapAlignment.start,
                                                                                          verticalDirection: VerticalDirection.down,
                                                                                          clipBehavior: Clip.none,
                                                                                          children: [
                                                                                            if ((listResultado2MensagensWhatsappRow.msgRespostaText != null && listResultado2MensagensWhatsappRow.msgRespostaText != '') || (listResultado2MensagensWhatsappRow.msgRespostaImageUrl != null && listResultado2MensagensWhatsappRow.msgRespostaImageUrl != '') || (listResultado2MensagensWhatsappRow.msgRespostaVideoUrl != null && listResultado2MensagensWhatsappRow.msgRespostaVideoUrl != '') || (listResultado2MensagensWhatsappRow.msgRespostaAudioUrl != null && listResultado2MensagensWhatsappRow.msgRespostaAudioUrl != '') || (listResultado2MensagensWhatsappRow.msgRespostaDocumentUrl != null && listResultado2MensagensWhatsappRow.msgRespostaDocumentUrl != ''))
                                                                                              Container(
                                                                                                decoration: BoxDecoration(
                                                                                                  color: Color(0xFFD9E1F6),
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsets.all(8.0),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Align(
                                                                                                        alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                        child: Builder(
                                                                                                          builder: (context) {
                                                                                                            if (listResultado2MensagensWhatsappRow.msgRespostaText != null && listResultado2MensagensWhatsappRow.msgRespostaText != '') {
                                                                                                              return Container(
                                                                                                                width: 350.0,
                                                                                                                decoration: BoxDecoration(),
                                                                                                                child: Wrap(
                                                                                                                  spacing: 0.0,
                                                                                                                  runSpacing: 0.0,
                                                                                                                  alignment: WrapAlignment.start,
                                                                                                                  crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                                  direction: Axis.horizontal,
                                                                                                                  runAlignment: WrapAlignment.start,
                                                                                                                  verticalDirection: VerticalDirection.down,
                                                                                                                  clipBehavior: Clip.none,
                                                                                                                  children: [
                                                                                                                    Padding(
                                                                                                                      padding: EdgeInsets.all(4.0),
                                                                                                                      child: SelectionArea(
                                                                                                                          child: AutoSizeText(
                                                                                                                        valueOrDefault<String>(
                                                                                                                          listResultado2MensagensWhatsappRow.msgRespostaText,
                                                                                                                          'Mensagem não reconhecida',
                                                                                                                        ),
                                                                                                                        textAlign: TextAlign.start,
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                              ),
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                              lineHeight: 1.5,
                                                                                                                            ),
                                                                                                                      )),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              );
                                                                                                            } else if (listResultado2MensagensWhatsappRow.msgRespostaAudioUrl != null && listResultado2MensagensWhatsappRow.msgRespostaAudioUrl != '') {
                                                                                                              return Container(
                                                                                                                width: 200.0,
                                                                                                                decoration: BoxDecoration(),
                                                                                                                child: FlutterFlowAudioPlayer(
                                                                                                                  audio: Audio.network(
                                                                                                                    listResultado2MensagensWhatsappRow.msgRespostaAudioUrl!,
                                                                                                                    metas: Metas(
                                                                                                                      title: 'Title',
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  titleTextStyle: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                        font: GoogleFonts.plusJakartaSans(
                                                                                                                          fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                                                                        ),
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                                                                      ),
                                                                                                                  playbackDurationTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                        font: GoogleFonts.plusJakartaSans(
                                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                        ),
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                      ),
                                                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  playbackButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                                                  activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                                                                  inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                                                  elevation: 0.0,
                                                                                                                  playInBackground: PlayInBackground.disabledRestoreOnForeground,
                                                                                                                ),
                                                                                                              );
                                                                                                            } else if (listResultado2MensagensWhatsappRow.msgRespostaImageUrl != null && listResultado2MensagensWhatsappRow.msgRespostaImageUrl != '') {
                                                                                                              return ClipRRect(
                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                                child: Image.network(
                                                                                                                  listResultado2MensagensWhatsappRow.msgRespostaImageUrl!,
                                                                                                                  width: 200.0,
                                                                                                                  height: 200.0,
                                                                                                                  fit: BoxFit.cover,
                                                                                                                ),
                                                                                                              );
                                                                                                            } else if (listResultado2MensagensWhatsappRow.msgRespostaVideoUrl != null && listResultado2MensagensWhatsappRow.msgRespostaVideoUrl != '') {
                                                                                                              return FlutterFlowVideoPlayer(
                                                                                                                path: listResultado2MensagensWhatsappRow.msgRespostaVideoUrl!,
                                                                                                                videoType: VideoType.network,
                                                                                                                width: 200.0,
                                                                                                                height: 200.0,
                                                                                                                autoPlay: false,
                                                                                                                looping: true,
                                                                                                                showControls: true,
                                                                                                                allowFullScreen: true,
                                                                                                                allowPlaybackSpeedMenu: false,
                                                                                                              );
                                                                                                            } else if (listResultado2MensagensWhatsappRow.msgRespostaDocumentUrl != null && listResultado2MensagensWhatsappRow.msgRespostaDocumentUrl != '') {
                                                                                                              return InkWell(
                                                                                                                splashColor: Colors.transparent,
                                                                                                                focusColor: Colors.transparent,
                                                                                                                hoverColor: Colors.transparent,
                                                                                                                highlightColor: Colors.transparent,
                                                                                                                onTap: () async {
                                                                                                                  await launchURL(listResultado2MensagensWhatsappRow.msgRespostaDocumentUrl!);
                                                                                                                },
                                                                                                                child: Row(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Icon(
                                                                                                                      Icons.document_scanner_sharp,
                                                                                                                      color: Color(0xFF683BA5),
                                                                                                                      size: 24.0,
                                                                                                                    ),
                                                                                                                    Text(
                                                                                                                      valueOrDefault<String>(
                                                                                                                        listResultado2MensagensWhatsappRow.msgRespostaDocumentUrl,
                                                                                                                        'Mensagem não reconhecida',
                                                                                                                      ),
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                            ),
                                                                                                                            color: Color(0xFF2D3BAB),
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              );
                                                                                                            } else {
                                                                                                              return Text(
                                                                                                                FFLocalizations.of(context).getText(
                                                                                                                  'xzc4wgvd' /* Mensagem não reconhecida. */,
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      font: GoogleFonts.plusJakartaSans(
                                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                      ),
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                    ),
                                                                                                              );
                                                                                                            }
                                                                                                          },
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            Padding(
                                                                                              padding: EdgeInsets.all(4.0),
                                                                                              child: SelectionArea(
                                                                                                  child: AutoSizeText(
                                                                                                valueOrDefault<String>(
                                                                                                  listResultado2MensagensWhatsappRow.textMessage,
                                                                                                  'Mensagem não reconhecida',
                                                                                                ),
                                                                                                textAlign: TextAlign.start,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.plusJakartaSans(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      lineHeight: 1.5,
                                                                                                    ),
                                                                                              )),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    } else if (listResultado2MensagensWhatsappRow.audioUrl != null && listResultado2MensagensWhatsappRow.audioUrl != '') {
                                                                                      return Container(
                                                                                        decoration: BoxDecoration(),
                                                                                        child: FlutterFlowAudioPlayer(
                                                                                          audio: Audio.network(
                                                                                            listResultado2MensagensWhatsappRow.audioUrl!,
                                                                                            metas: Metas(
                                                                                              title: 'Title',
                                                                                            ),
                                                                                          ),
                                                                                          titleTextStyle: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                font: GoogleFonts.plusJakartaSans(
                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                                                ),
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                                              ),
                                                                                          playbackDurationTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                font: GoogleFonts.plusJakartaSans(
                                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                ),
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          playbackButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                          activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                                          inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                          elevation: 0.0,
                                                                                          playInBackground: PlayInBackground.disabledRestoreOnForeground,
                                                                                        ),
                                                                                      );
                                                                                    } else if (listResultado2MensagensWhatsappRow.imageUrl != null && listResultado2MensagensWhatsappRow.imageUrl != '') {
                                                                                      return Builder(
                                                                                        builder: (context) => InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            await showDialog(
                                                                                              context: context,
                                                                                              builder: (dialogContext) {
                                                                                                return Dialog(
                                                                                                  elevation: 0,
                                                                                                  insetPadding: EdgeInsets.zero,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                  child: ModalFotoWidget(
                                                                                                    urlImagem: listResultado2MensagensWhatsappRow.imageUrl!,
                                                                                                    imaGEMuRL: listResultado2MensagensWhatsappRow.imageUrl!,
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          },
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.network(
                                                                                              listResultado2MensagensWhatsappRow.imageUrl!,
                                                                                              width: 200.0,
                                                                                              height: 200.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    } else if (listResultado2MensagensWhatsappRow.videoUrl != null && listResultado2MensagensWhatsappRow.videoUrl != '') {
                                                                                      return FlutterFlowVideoPlayer(
                                                                                        path: listResultado2MensagensWhatsappRow.videoUrl!,
                                                                                        videoType: VideoType.network,
                                                                                        width: 200.0,
                                                                                        height: 150.0,
                                                                                        autoPlay: false,
                                                                                        looping: true,
                                                                                        showControls: true,
                                                                                        allowFullScreen: true,
                                                                                        allowPlaybackSpeedMenu: false,
                                                                                      );
                                                                                    } else if (listResultado2MensagensWhatsappRow.documentUrl != null && listResultado2MensagensWhatsappRow.documentUrl != '') {
                                                                                      return InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          await launchURL(listResultado2MensagensWhatsappRow.documentUrl!);
                                                                                        },
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.document_scanner_sharp,
                                                                                                color: Color(0xFF683BA5),
                                                                                                size: 24.0,
                                                                                              ),
                                                                                            ),
                                                                                            Text(
                                                                                              valueOrDefault<String>(
                                                                                                listResultado2MensagensWhatsappRow.documentTitle,
                                                                                                'Mensagem não reconhecida',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    font: GoogleFonts.plusJakartaSans(
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: Color(0xFF2D3BAB),
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    } else {
                                                                                      return Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '9ep8ceo2' /* Mensagem não reconhecida. */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      );
                                                                                    }
                                                                                  },
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    dateTimeFormat(
                                                                      "dd/MM HH:mm",
                                                                      listResultado2MensagensWhatsappRow
                                                                          .createdAt!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.plusJakartaSans(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ],
                                                              );
                                                            } else {
                                                              return Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            300.0,
                                                                        constraints:
                                                                            BoxConstraints(
                                                                          maxWidth:
                                                                              valueOrDefault<double>(
                                                                            () {
                                                                              if ((MediaQuery.sizeOf(context).width >= 1270.0) && !listResultado2MensagensWhatsappRow.fromMe!) {
                                                                                return 700.0;
                                                                              } else if ((MediaQuery.sizeOf(context).width >= 1270.0) && listResultado2MensagensWhatsappRow.fromMe!) {
                                                                                return 900.0;
                                                                              } else {
                                                                                return 320.0;
                                                                              }
                                                                            }(),
                                                                            700.0,
                                                                          ),
                                                                        ),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: !listResultado2MensagensWhatsappRow.fromMe!
                                                                              ? FlutterFlowTheme.of(context).secondaryBackground
                                                                              : FlutterFlowTheme.of(context).primary,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 3.0,
                                                                              color: Color(0x33000000),
                                                                              offset: Offset(
                                                                                0.0,
                                                                                1.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            bottomLeft:
                                                                                Radius.circular(0.0),
                                                                            bottomRight:
                                                                                Radius.circular(12.0),
                                                                            topLeft:
                                                                                Radius.circular(12.0),
                                                                            topRight:
                                                                                Radius.circular(12.0),
                                                                          ),
                                                                          border:
                                                                              Border.all(
                                                                            color: !listResultado2MensagensWhatsappRow.fromMe!
                                                                                ? FlutterFlowTheme.of(context).alternate
                                                                                : FlutterFlowTheme.of(context).accent1,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(8.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Builder(
                                                                                builder: (context) {
                                                                                  if (listResultado2MensagensWhatsappRow.textMessage != null && listResultado2MensagensWhatsappRow.textMessage != '') {
                                                                                    return Container(
                                                                                      width: 350.0,
                                                                                      decoration: BoxDecoration(),
                                                                                      child: Wrap(
                                                                                        spacing: 0.0,
                                                                                        runSpacing: 0.0,
                                                                                        alignment: WrapAlignment.start,
                                                                                        crossAxisAlignment: WrapCrossAlignment.start,
                                                                                        direction: Axis.horizontal,
                                                                                        runAlignment: WrapAlignment.start,
                                                                                        verticalDirection: VerticalDirection.down,
                                                                                        clipBehavior: Clip.none,
                                                                                        children: [
                                                                                          if ((listResultado2MensagensWhatsappRow.msgRespostaText != null && listResultado2MensagensWhatsappRow.msgRespostaText != '') || (listResultado2MensagensWhatsappRow.msgRespostaImageUrl != null && listResultado2MensagensWhatsappRow.msgRespostaImageUrl != '') || (listResultado2MensagensWhatsappRow.msgRespostaVideoUrl != null && listResultado2MensagensWhatsappRow.msgRespostaVideoUrl != '') || (listResultado2MensagensWhatsappRow.msgRespostaAudioUrl != null && listResultado2MensagensWhatsappRow.msgRespostaAudioUrl != '') || (listResultado2MensagensWhatsappRow.msgRespostaDocumentUrl != null && listResultado2MensagensWhatsappRow.msgRespostaDocumentUrl != ''))
                                                                                            Container(
                                                                                              decoration: BoxDecoration(
                                                                                                color: Color(0xFFD9E1F6),
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsets.all(8.0),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Align(
                                                                                                      alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                      child: Builder(
                                                                                                        builder: (context) {
                                                                                                          if (listResultado2MensagensWhatsappRow.msgRespostaText != null && listResultado2MensagensWhatsappRow.msgRespostaText != '') {
                                                                                                            return Container(
                                                                                                              width: 350.0,
                                                                                                              decoration: BoxDecoration(),
                                                                                                              child: Wrap(
                                                                                                                spacing: 0.0,
                                                                                                                runSpacing: 0.0,
                                                                                                                alignment: WrapAlignment.start,
                                                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                                direction: Axis.horizontal,
                                                                                                                runAlignment: WrapAlignment.start,
                                                                                                                verticalDirection: VerticalDirection.down,
                                                                                                                clipBehavior: Clip.none,
                                                                                                                children: [
                                                                                                                  Padding(
                                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                                    child: SelectionArea(
                                                                                                                        child: AutoSizeText(
                                                                                                                      valueOrDefault<String>(
                                                                                                                        listResultado2MensagensWhatsappRow.msgRespostaText,
                                                                                                                        'Mensagem não reconhecida',
                                                                                                                      ),
                                                                                                                      textAlign: TextAlign.start,
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                            ),
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                            lineHeight: 1.5,
                                                                                                                          ),
                                                                                                                    )),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            );
                                                                                                          } else if (listResultado2MensagensWhatsappRow.msgRespostaAudioUrl != null && listResultado2MensagensWhatsappRow.msgRespostaAudioUrl != '') {
                                                                                                            return Container(
                                                                                                              width: 200.0,
                                                                                                              decoration: BoxDecoration(),
                                                                                                              child: FlutterFlowAudioPlayer(
                                                                                                                audio: Audio.network(
                                                                                                                  listResultado2MensagensWhatsappRow.msgRespostaAudioUrl!,
                                                                                                                  metas: Metas(
                                                                                                                    title: 'Title',
                                                                                                                  ),
                                                                                                                ),
                                                                                                                titleTextStyle: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                      font: GoogleFonts.plusJakartaSans(
                                                                                                                        fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                                                                      ),
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                                                                    ),
                                                                                                                playbackDurationTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                      font: GoogleFonts.plusJakartaSans(
                                                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                      ),
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                    ),
                                                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                                                activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                                                                inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                                                elevation: 0.0,
                                                                                                                playInBackground: PlayInBackground.disabledRestoreOnForeground,
                                                                                                              ),
                                                                                                            );
                                                                                                          } else if (listResultado2MensagensWhatsappRow.msgRespostaImageUrl != null && listResultado2MensagensWhatsappRow.msgRespostaImageUrl != '') {
                                                                                                            return ClipRRect(
                                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                                              child: Image.network(
                                                                                                                listResultado2MensagensWhatsappRow.msgRespostaImageUrl!,
                                                                                                                width: 200.0,
                                                                                                                height: 200.0,
                                                                                                                fit: BoxFit.cover,
                                                                                                              ),
                                                                                                            );
                                                                                                          } else if (listResultado2MensagensWhatsappRow.msgRespostaVideoUrl != null && listResultado2MensagensWhatsappRow.msgRespostaVideoUrl != '') {
                                                                                                            return FlutterFlowVideoPlayer(
                                                                                                              path: listResultado2MensagensWhatsappRow.msgRespostaVideoUrl!,
                                                                                                              videoType: VideoType.network,
                                                                                                              width: 200.0,
                                                                                                              height: 200.0,
                                                                                                              autoPlay: false,
                                                                                                              looping: true,
                                                                                                              showControls: true,
                                                                                                              allowFullScreen: true,
                                                                                                              allowPlaybackSpeedMenu: false,
                                                                                                            );
                                                                                                          } else if (listResultado2MensagensWhatsappRow.msgRespostaDocumentUrl != null && listResultado2MensagensWhatsappRow.msgRespostaDocumentUrl != '') {
                                                                                                            return InkWell(
                                                                                                              splashColor: Colors.transparent,
                                                                                                              focusColor: Colors.transparent,
                                                                                                              hoverColor: Colors.transparent,
                                                                                                              highlightColor: Colors.transparent,
                                                                                                              onTap: () async {
                                                                                                                await launchURL(listResultado2MensagensWhatsappRow.msgRespostaDocumentUrl!);
                                                                                                              },
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Icon(
                                                                                                                    Icons.document_scanner_sharp,
                                                                                                                    color: Color(0xFF683BA5),
                                                                                                                    size: 24.0,
                                                                                                                  ),
                                                                                                                  Text(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      listResultado2MensagensWhatsappRow.msgRespostaDocumentUrl,
                                                                                                                      'Mensagem não reconhecida',
                                                                                                                    ),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                          ),
                                                                                                                          color: Color(0xFF2D3BAB),
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            );
                                                                                                          } else {
                                                                                                            return Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'hsukwexz' /* Mensagem não reconhecida. */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    font: GoogleFonts.plusJakartaSans(
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                    ),
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                  ),
                                                                                                            );
                                                                                                          }
                                                                                                        },
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          Padding(
                                                                                            padding: EdgeInsets.all(4.0),
                                                                                            child: SelectionArea(
                                                                                                child: AutoSizeText(
                                                                                              valueOrDefault<String>(
                                                                                                listResultado2MensagensWhatsappRow.textMessage,
                                                                                                'Mensagem não reconhecida',
                                                                                              ),
                                                                                              textAlign: TextAlign.start,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    font: GoogleFonts.plusJakartaSans(
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    lineHeight: 1.5,
                                                                                                  ),
                                                                                            )),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    );
                                                                                  } else if (listResultado2MensagensWhatsappRow.audioUrl != null && listResultado2MensagensWhatsappRow.audioUrl != '') {
                                                                                    return Container(
                                                                                      width: 200.0,
                                                                                      decoration: BoxDecoration(),
                                                                                      child: FlutterFlowAudioPlayer(
                                                                                        audio: Audio.network(
                                                                                          listResultado2MensagensWhatsappRow.audioUrl!,
                                                                                          metas: Metas(
                                                                                            title: 'Title',
                                                                                          ),
                                                                                        ),
                                                                                        titleTextStyle: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                                              ),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                                            ),
                                                                                        playbackDurationTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        playbackButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                        activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                                        inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                        elevation: 0.0,
                                                                                        playInBackground: PlayInBackground.disabledRestoreOnForeground,
                                                                                      ),
                                                                                    );
                                                                                  } else if (listResultado2MensagensWhatsappRow.imageUrl != null && listResultado2MensagensWhatsappRow.imageUrl != '') {
                                                                                    return Builder(
                                                                                      builder: (context) => InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          await showDialog(
                                                                                            context: context,
                                                                                            builder: (dialogContext) {
                                                                                              return Dialog(
                                                                                                elevation: 0,
                                                                                                insetPadding: EdgeInsets.zero,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                child: ModalFotoWidget(
                                                                                                  urlImagem: listResultado2MensagensWhatsappRow.imageUrl!,
                                                                                                  imaGEMuRL: listResultado2MensagensWhatsappRow.imageUrl!,
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          );
                                                                                        },
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                          child: Image.network(
                                                                                            listResultado2MensagensWhatsappRow.imageUrl!,
                                                                                            width: 200.0,
                                                                                            height: 200.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  } else if (listResultado2MensagensWhatsappRow.videoUrl != null && listResultado2MensagensWhatsappRow.videoUrl != '') {
                                                                                    return FlutterFlowVideoPlayer(
                                                                                      path: listResultado2MensagensWhatsappRow.videoUrl!,
                                                                                      videoType: VideoType.network,
                                                                                      width: 200.0,
                                                                                      height: 200.0,
                                                                                      autoPlay: false,
                                                                                      looping: true,
                                                                                      showControls: true,
                                                                                      allowFullScreen: true,
                                                                                      allowPlaybackSpeedMenu: false,
                                                                                    );
                                                                                  } else if (listResultado2MensagensWhatsappRow.documentUrl != null && listResultado2MensagensWhatsappRow.documentUrl != '') {
                                                                                    return InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        await launchURL(listResultado2MensagensWhatsappRow.documentUrl!);
                                                                                      },
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Icon(
                                                                                            Icons.document_scanner_sharp,
                                                                                            color: Color(0xFF683BA5),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                          Wrap(
                                                                                            spacing: 0.0,
                                                                                            runSpacing: 0.0,
                                                                                            alignment: WrapAlignment.start,
                                                                                            crossAxisAlignment: WrapCrossAlignment.start,
                                                                                            direction: Axis.horizontal,
                                                                                            runAlignment: WrapAlignment.start,
                                                                                            verticalDirection: VerticalDirection.down,
                                                                                            clipBehavior: Clip.none,
                                                                                            children: [
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listResultado2MensagensWhatsappRow.documentTitle,
                                                                                                  'Mensagem não reconhecida',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.plusJakartaSans(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: Color(0xFF2D3BAB),
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    );
                                                                                  } else {
                                                                                    return Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'c10uxucf' /* Mensagem não reconhecida. */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                    );
                                                                                  }
                                                                                },
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            1.0,
                                                                            1.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              4.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            dateTimeFormat(
                                                                              "dd/MM HH:mm",
                                                                              listResultado2MensagensWhatsappRow.createdAt!,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                  font: GoogleFonts.plusJakartaSans(
                                                                                    fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                                  ),
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              );
                                                            }
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ).animateOnActionTrigger(
                                animationsMap[
                                    'listViewOnActionTriggerAnimation']!,
                              );
                            },
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                if (FFAppState().msgEnvioImageVideoPdf)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 5.0),
                                    child: Container(
                                      width: 155.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 5.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    var _shouldSetState = false;
                                                    final selectedFiles =
                                                        await selectFiles(
                                                      storageFolderPath:
                                                          '${FFAppState().gabineteId}/${functions.gerarTimestamp()?.toString()}.pdf',
                                                      multiFile: false,
                                                    );
                                                    if (selectedFiles != null) {
                                                      safeSetState(() => _model
                                                              .isDataUploading_uploadDataPdftt =
                                                          true);
                                                      var selectedUploadedFiles =
                                                          <FFUploadedFile>[];

                                                      var downloadUrls =
                                                          <String>[];
                                                      try {
                                                        selectedUploadedFiles =
                                                            selectedFiles
                                                                .map((m) =>
                                                                    FFUploadedFile(
                                                                      name: m
                                                                          .storagePath
                                                                          .split(
                                                                              '/')
                                                                          .last,
                                                                      bytes: m
                                                                          .bytes,
                                                                      originalFilename:
                                                                          m.originalFilename,
                                                                    ))
                                                                .toList();

                                                        downloadUrls =
                                                            await uploadSupabaseStorageFiles(
                                                          bucketName:
                                                              'disparos',
                                                          selectedFiles:
                                                              selectedFiles,
                                                        );
                                                      } finally {
                                                        _model.isDataUploading_uploadDataPdftt =
                                                            false;
                                                      }
                                                      if (selectedUploadedFiles
                                                                  .length ==
                                                              selectedFiles
                                                                  .length &&
                                                          downloadUrls.length ==
                                                              selectedFiles
                                                                  .length) {
                                                        safeSetState(() {
                                                          _model.uploadedLocalFile_uploadDataPdftt =
                                                              selectedUploadedFiles
                                                                  .first;
                                                          _model.uploadedFileUrl_uploadDataPdftt =
                                                              downloadUrls
                                                                  .first;
                                                        });
                                                      } else {
                                                        safeSetState(() {});
                                                        return;
                                                      }
                                                    }

                                                    _model.apiResuPdftt =
                                                        await MensagensGroup
                                                            .enviarMensagensCall
                                                            .call(
                                                      gabineteId: FFAppState()
                                                          .gabineteId,
                                                      phone:
                                                          FFAppState().msgPhone,
                                                      message: _model
                                                          .uploadedFileUrl_uploadDataPdftt,
                                                      messageType: 'document',
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model.apiResuPdftt
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState().msgEnvio =
                                                          true;
                                                      safeSetState(() {});
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Documento enviada!',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Erro em enviar mensagem',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .error,
                                                        ),
                                                      );
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    }

                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.description,
                                                        color:
                                                            Color(0xFF7F4AA7),
                                                        size: 24.0,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'v96ozt5t' /* Documento */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .plusJakartaSans(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  var _shouldSetState = false;
                                                  final selectedMedia =
                                                      await selectMediaWithSourceBottomSheet(
                                                    context: context,
                                                    storageFolderPath:
                                                        '${FFAppState().gabineteId}/${functions.gerarTimestamp()?.toString()}.jpg',
                                                    allowPhoto: true,
                                                  );
                                                  if (selectedMedia != null &&
                                                      selectedMedia.every((m) =>
                                                          validateFileFormat(
                                                              m.storagePath,
                                                              context))) {
                                                    safeSetState(() => _model
                                                            .isDataUploading_uploadDataImagett =
                                                        true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
                                                    try {
                                                      selectedUploadedFiles =
                                                          selectedMedia
                                                              .map((m) =>
                                                                  FFUploadedFile(
                                                                    name: m
                                                                        .storagePath
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    bytes:
                                                                        m.bytes,
                                                                    height: m
                                                                        .dimensions
                                                                        ?.height,
                                                                    width: m
                                                                        .dimensions
                                                                        ?.width,
                                                                    blurHash: m
                                                                        .blurHash,
                                                                    originalFilename:
                                                                        m.originalFilename,
                                                                  ))
                                                              .toList();

                                                      downloadUrls =
                                                          await uploadSupabaseStorageFiles(
                                                        bucketName: 'disparos',
                                                        selectedFiles:
                                                            selectedMedia,
                                                      );
                                                    } finally {
                                                      _model.isDataUploading_uploadDataImagett =
                                                          false;
                                                    }
                                                    if (selectedUploadedFiles
                                                                .length ==
                                                            selectedMedia
                                                                .length &&
                                                        downloadUrls.length ==
                                                            selectedMedia
                                                                .length) {
                                                      safeSetState(() {
                                                        _model.uploadedLocalFile_uploadDataImagett =
                                                            selectedUploadedFiles
                                                                .first;
                                                        _model.uploadedFileUrl_uploadDataImagett =
                                                            downloadUrls.first;
                                                      });
                                                    } else {
                                                      safeSetState(() {});
                                                      return;
                                                    }
                                                  }

                                                  _model.apiResulImagett =
                                                      await MensagensGroup
                                                          .enviarMensagensCall
                                                          .call(
                                                    gabineteId:
                                                        FFAppState().gabineteId,
                                                    phone:
                                                        FFAppState().msgPhone,
                                                    message: _model
                                                        .uploadedFileUrl_uploadDataImagett,
                                                    messageType: 'image',
                                                  );

                                                  _shouldSetState = true;
                                                  if ((_model.apiResulImagett
                                                          ?.succeeded ??
                                                      true)) {
                                                    FFAppState().msgEnvio =
                                                        true;
                                                    safeSetState(() {});
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Imagem enviada!',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    );
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Erro em enviar mensagem',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                      ),
                                                    );
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons.photo_library,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vgqzmriy' /* Fotos */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .plusJakartaSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  var _shouldSetState = false;
                                                  final selectedMedia =
                                                      await selectMediaWithSourceBottomSheet(
                                                    context: context,
                                                    storageFolderPath:
                                                        '${FFAppState().gabineteId}/\${DateTime.now().millisecondsSinceEpoch}.mp4',
                                                    allowPhoto: false,
                                                    allowVideo: true,
                                                  );
                                                  if (selectedMedia != null &&
                                                      selectedMedia.every((m) =>
                                                          validateFileFormat(
                                                              m.storagePath,
                                                              context))) {
                                                    safeSetState(() => _model
                                                            .isDataUploading_uploadDataVideott =
                                                        true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
                                                    try {
                                                      selectedUploadedFiles =
                                                          selectedMedia
                                                              .map((m) =>
                                                                  FFUploadedFile(
                                                                    name: m
                                                                        .storagePath
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    bytes:
                                                                        m.bytes,
                                                                    height: m
                                                                        .dimensions
                                                                        ?.height,
                                                                    width: m
                                                                        .dimensions
                                                                        ?.width,
                                                                    blurHash: m
                                                                        .blurHash,
                                                                    originalFilename:
                                                                        m.originalFilename,
                                                                  ))
                                                              .toList();

                                                      downloadUrls =
                                                          await uploadSupabaseStorageFiles(
                                                        bucketName: 'disparos',
                                                        selectedFiles:
                                                            selectedMedia,
                                                      );
                                                    } finally {
                                                      _model.isDataUploading_uploadDataVideott =
                                                          false;
                                                    }
                                                    if (selectedUploadedFiles
                                                                .length ==
                                                            selectedMedia
                                                                .length &&
                                                        downloadUrls.length ==
                                                            selectedMedia
                                                                .length) {
                                                      safeSetState(() {
                                                        _model.uploadedLocalFile_uploadDataVideott =
                                                            selectedUploadedFiles
                                                                .first;
                                                        _model.uploadedFileUrl_uploadDataVideott =
                                                            downloadUrls.first;
                                                      });
                                                    } else {
                                                      safeSetState(() {});
                                                      return;
                                                    }
                                                  }

                                                  _model.apiResulVideott =
                                                      await MensagensGroup
                                                          .enviarMensagensCall
                                                          .call(
                                                    gabineteId:
                                                        FFAppState().gabineteId,
                                                    phone:
                                                        FFAppState().msgPhone,
                                                    message: _model
                                                        .uploadedFileUrl_uploadDataVideott,
                                                    messageType: 'video',
                                                  );

                                                  _shouldSetState = true;
                                                  if ((_model.apiResulVideott
                                                          ?.succeeded ??
                                                      true)) {
                                                    FFAppState().msgEnvio =
                                                        true;
                                                    safeSetState(() {});
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Video enviada!',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    );
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Erro em enviar mensagem',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                      ),
                                                    );
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons.video_collection,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qbkmxgk2' /* Videos */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .plusJakartaSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 7.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    var _shouldSetState = false;
                                                    final selectedFiles =
                                                        await selectFiles(
                                                      storageFolderPath:
                                                          '${FFAppState().gabineteId}/\${DateTime.now().millisecondsSinceEpoch}.mp3',
                                                      allowedExtensions: [
                                                        'mp3'
                                                      ],
                                                      multiFile: false,
                                                    );
                                                    if (selectedFiles != null) {
                                                      safeSetState(() => _model
                                                              .isDataUploading_uploadDataAudiott =
                                                          true);
                                                      var selectedUploadedFiles =
                                                          <FFUploadedFile>[];

                                                      var downloadUrls =
                                                          <String>[];
                                                      try {
                                                        selectedUploadedFiles =
                                                            selectedFiles
                                                                .map((m) =>
                                                                    FFUploadedFile(
                                                                      name: m
                                                                          .storagePath
                                                                          .split(
                                                                              '/')
                                                                          .last,
                                                                      bytes: m
                                                                          .bytes,
                                                                      originalFilename:
                                                                          m.originalFilename,
                                                                    ))
                                                                .toList();

                                                        downloadUrls =
                                                            await uploadSupabaseStorageFiles(
                                                          bucketName:
                                                              'disparos',
                                                          selectedFiles:
                                                              selectedFiles,
                                                        );
                                                      } finally {
                                                        _model.isDataUploading_uploadDataAudiott =
                                                            false;
                                                      }
                                                      if (selectedUploadedFiles
                                                                  .length ==
                                                              selectedFiles
                                                                  .length &&
                                                          downloadUrls.length ==
                                                              selectedFiles
                                                                  .length) {
                                                        safeSetState(() {
                                                          _model.uploadedLocalFile_uploadDataAudiott =
                                                              selectedUploadedFiles
                                                                  .first;
                                                          _model.uploadedFileUrl_uploadDataAudiott =
                                                              downloadUrls
                                                                  .first;
                                                        });
                                                      } else {
                                                        safeSetState(() {});
                                                        return;
                                                      }
                                                    }

                                                    _model.apiResultAudiott =
                                                        await MensagensGroup
                                                            .enviarMensagensCall
                                                            .call(
                                                      gabineteId: FFAppState()
                                                          .gabineteId,
                                                      phone:
                                                          FFAppState().msgPhone,
                                                      message: _model
                                                          .uploadedFileUrl_uploadDataAudiott,
                                                      messageType: 'audio',
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model.apiResultAudiott
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState().msgEnvio =
                                                          true;
                                                      safeSetState(() {});
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Audio enviada!',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Erro em enviar mensagem',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .error,
                                                        ),
                                                      );
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    }

                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.headset,
                                                          color:
                                                              Color(0xFF8F375A),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '2kgyoy9a' /* Áudio */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .plusJakartaSans(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: FFButtonWidget(
                                              onPressed: ((FFAppState()
                                                              .msgLidoText ==
                                                          'true') &&
                                                      (FFAppState().msgFinish ==
                                                          true))
                                                  ? null
                                                  : () async {
                                                      if (FFAppState()
                                                                  .msgCidadaoID ==
                                                              null ||
                                                          FFAppState()
                                                                  .msgCidadaoID ==
                                                              '') {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Selecionar um chat para Finalizar a conversa!',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .warning,
                                                          ),
                                                        );
                                                        return;
                                                      } else {
                                                        await CidadaosTable()
                                                            .update(
                                                          data: {
                                                            'conversa_finalizada':
                                                                true,
                                                          },
                                                          matchingRows:
                                                              (rows) => rows
                                                                  .eqOrNull(
                                                                    'cidadao_id',
                                                                    FFAppState()
                                                                        .msgCidadaoID,
                                                                  )
                                                                  .eqOrNull(
                                                                    'gabinete_id',
                                                                    FFAppState()
                                                                        .gabineteId,
                                                                  ),
                                                        );
                                                        await ChatsWhatsappTable()
                                                            .update(
                                                          data: {
                                                            'conversa_finalizada':
                                                                true,
                                                          },
                                                          matchingRows:
                                                              (rows) => rows
                                                                  .eqOrNull(
                                                                    'cidadao_id',
                                                                    FFAppState()
                                                                        .msgCidadaoID,
                                                                  )
                                                                  .eqOrNull(
                                                                    'gabinete_id',
                                                                    FFAppState()
                                                                        .gabineteId,
                                                                  ),
                                                        );
                                                        safeSetState(() => _model
                                                                .requestCompleter =
                                                            null);
                                                        await _model
                                                            .waitForRequestCompleted();
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Conversa finalizada com sucesso!',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                          ),
                                                        );
                                                        return;
                                                      }
                                                    },
                                              text: (FFAppState().msgLidoText ==
                                                          'true') &&
                                                      (FFAppState().msgFinish ==
                                                          true)
                                                  ? 'Finalizado'
                                                  : 'Finalizar',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                disabledColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                disabledTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 10.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    '',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderRadius: 8.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      icon: Icon(
                                        Icons.add_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        if (FFAppState()
                                                .msgEnvioImageVideoPdf ==
                                            false) {
                                          FFAppState().msgEnvioImageVideoPdf =
                                              true;
                                          safeSetState(() {});
                                          return;
                                        } else {
                                          FFAppState().msgEnvioImageVideoPdf =
                                              false;
                                          safeSetState(() {});
                                          return;
                                        }
                                      },
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: TextFormField(
                                          controller: _model.textController,
                                          focusNode: _model.textFieldFocusNode,
                                          onFieldSubmitted: (_) async {
                                            var _shouldSetState = false;
                                            _model.apiResultextCopy5 =
                                                await MensagensGroup
                                                    .enviarMensagensCall
                                                    .call(
                                              gabineteId:
                                                  FFAppState().gabineteId,
                                              phone: FFAppState().msgPhone,
                                              message:
                                                  _model.textController.text,
                                              messageType: 'text',
                                            );

                                            _shouldSetState = true;
                                            if ((_model.apiResultextCopy5
                                                    ?.succeeded ??
                                                true)) {
                                              safeSetState(() {
                                                _model.textController?.clear();
                                              });
                                              FFAppState().msgEnvio = true;
                                              safeSetState(() {});
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Mensagem enviada!',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                ),
                                              );
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Erro em enviar mensagem',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                ),
                                              );
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            }

                                            if (_shouldSetState)
                                              safeSetState(() {});
                                          },
                                          autofocus: true,
                                          textCapitalization:
                                              TextCapitalization.sentences,
                                          textInputAction: TextInputAction.done,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts
                                                          .plusJakartaSans(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              't5puxtkm' /* Pressione "ENTER" para enviar.... */,
                                            ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts
                                                          .plusJakartaSans(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 8.0, 0.0, 8.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          maxLines: 12,
                                          minLines: 1,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                          inputFormatters: [
                                            if (!isAndroid && !isiOS)
                                              TextInputFormatter.withFunction(
                                                  (oldValue, newValue) {
                                                return TextEditingValue(
                                                  selection: newValue.selection,
                                                  text: newValue.text
                                                      .toCapitalization(
                                                          TextCapitalization
                                                              .sentences),
                                                );
                                              }),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
