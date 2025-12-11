import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> with TickerProviderStateMixin {
  late MenuModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.abrirFechar = 'aberto';
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 230.0.ms,
            duration: 950.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
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

    return FutureBuilder<List<UsuariosRow>>(
      future: UsuariosTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'uuid',
          currentUserUid,
        ),
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
        List<UsuariosRow> containerUsuariosRowList = snapshot.data!;

        final containerUsuariosRow = containerUsuariosRowList.isNotEmpty
            ? containerUsuariosRowList.first
            : null;

        return Container(
          width: 270.0,
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              Container(
                width: valueOrDefault<double>(
                  _model.abrirFechar == 'aberto' ? 265.0 : 265.0,
                  265.0,
                ),
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 30.0, 20.0, 30.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/gabitechPrancheta_10logo.png',
                                width: 200.0,
                                height: 100.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                    ),
                    if (containerUsuariosRow?.dashboard ?? true)
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().menu = 'home';
                              safeSetState(() {});

                              context.pushNamed(
                                HomeWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 12.0,
                                    color: FFAppState().menu == 'home'
                                        ? Color(0x6E3B82F6)
                                        : Colors.white,
                                    offset: Offset(
                                      0.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                gradient: LinearGradient(
                                  colors: [
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'home'
                                          ? FlutterFlowTheme.of(context).primary
                                          : Colors.white,
                                      Colors.white,
                                    ),
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'home'
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : Colors.white,
                                      Colors.white,
                                    )
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.94, -1.0),
                                  end: AlignmentDirectional(-0.94, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: valueOrDefault<Color>(
                                        () {
                                          if (_model.mouseRegionHovered1!) {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          } else if (FFAppState().menu ==
                                              'home') {
                                            return Colors.white;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryText;
                                          }
                                        }(),
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                      size: 24.0,
                                    ),
                                    if (_model.abrirFechar == 'aberto')
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '8hn0bv23' /* Home */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    () {
                                                      if (_model
                                                          .mouseRegionHovered1!) {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .primary;
                                                      } else if (FFAppState()
                                                              .menu ==
                                                          'home') {
                                                        return Colors.white;
                                                      } else {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryText;
                                                      }
                                                    }(),
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                  ),
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap['containerOnActionTriggerAnimation']!,
                          ),
                        ),
                        onEnter: ((event) async {
                          safeSetState(() => _model.mouseRegionHovered1 = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionHovered1 = false);
                        }),
                      ),
                    if (containerUsuariosRow?.atendimento ?? true)
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().menu = 'atendimentos';
                              FFAppState().refreshConversa = 'atualizar';
                              safeSetState(() {});

                              context.pushNamed(
                                MensagensWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 12.0,
                                    color: FFAppState().menu == 'atendimentos'
                                        ? Color(0x6E3B82F6)
                                        : Colors.white,
                                    offset: Offset(
                                      0.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                gradient: LinearGradient(
                                  colors: [
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'atendimentos'
                                          ? FlutterFlowTheme.of(context).primary
                                          : Colors.white,
                                      Colors.white,
                                    ),
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'atendimentos'
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : Colors.white,
                                      Colors.white,
                                    )
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.94, -1.0),
                                  end: AlignmentDirectional(-0.94, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.chat_bubble_outline_rounded,
                                      color: valueOrDefault<Color>(
                                        () {
                                          if (_model.mouseRegionHovered2!) {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          } else if (FFAppState().menu ==
                                              'atendimentos') {
                                            return Colors.white;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryText;
                                          }
                                        }(),
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                      size: 24.0,
                                    ),
                                    if (_model.abrirFechar == 'aberto')
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'il1ek5mb' /* Atendimentos */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    () {
                                                      if (_model
                                                          .mouseRegionHovered2!) {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .primary;
                                                      } else if (FFAppState()
                                                              .menu ==
                                                          'atendimentos') {
                                                        return Colors.white;
                                                      } else {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryText;
                                                      }
                                                    }(),
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                  ),
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        onEnter: ((event) async {
                          safeSetState(() => _model.mouseRegionHovered2 = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionHovered2 = false);
                        }),
                      ),
                    if (containerUsuariosRow?.solicitacoes ?? true)
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().menu = 'solicitacoes';
                              safeSetState(() {});

                              context.pushNamed(
                                SolicitacoesWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 12.0,
                                    color: FFAppState().menu == 'solicitacoes'
                                        ? Color(0x6E3B82F6)
                                        : Colors.white,
                                    offset: Offset(
                                      0.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                gradient: LinearGradient(
                                  colors: [
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'solicitacoes'
                                          ? FlutterFlowTheme.of(context).primary
                                          : Colors.white,
                                      Colors.white,
                                    ),
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'solicitacoes'
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : Colors.white,
                                      Colors.white,
                                    )
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.94, -1.0),
                                  end: AlignmentDirectional(-0.94, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.fileAlt,
                                      color: valueOrDefault<Color>(
                                        () {
                                          if (_model.mouseRegionHovered3!) {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          } else if (FFAppState().menu ==
                                              'solicitacoes') {
                                            return Colors.white;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryText;
                                          }
                                        }(),
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                      size: 24.0,
                                    ),
                                    if (_model.abrirFechar == 'aberto')
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'j8eabwva' /* Solicitações */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    () {
                                                      if (_model
                                                          .mouseRegionHovered3!) {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .primary;
                                                      } else if (FFAppState()
                                                              .menu ==
                                                          'solicitacoes') {
                                                        return Colors.white;
                                                      } else {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryText;
                                                      }
                                                    }(),
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                  ),
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        onEnter: ((event) async {
                          safeSetState(() => _model.mouseRegionHovered3 = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionHovered3 = false);
                        }),
                      ),
                    if (containerUsuariosRow?.atividades ?? true)
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().menu = 'atividades';
                              safeSetState(() {});

                              context.pushNamed(
                                AtividadesWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 12.0,
                                    color: FFAppState().menu == 'atividades'
                                        ? Color(0x6E3B82F6)
                                        : Colors.white,
                                    offset: Offset(
                                      0.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                gradient: LinearGradient(
                                  colors: [
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'atividades'
                                          ? FlutterFlowTheme.of(context).primary
                                          : Colors.white,
                                      Colors.white,
                                    ),
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'atividades'
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : Colors.white,
                                      Colors.white,
                                    )
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.94, -1.0),
                                  end: AlignmentDirectional(-0.94, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.checkSquare,
                                      color: valueOrDefault<Color>(
                                        () {
                                          if (_model.mouseRegionHovered4!) {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          } else if (FFAppState().menu ==
                                              'atividades') {
                                            return Colors.white;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryText;
                                          }
                                        }(),
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                      size: 24.0,
                                    ),
                                    if (_model.abrirFechar == 'aberto')
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '2386zuu3' /* Atividades */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    () {
                                                      if (_model
                                                          .mouseRegionHovered4!) {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .primary;
                                                      } else if (FFAppState()
                                                              .menu ==
                                                          'atividades') {
                                                        return Colors.white;
                                                      } else {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryText;
                                                      }
                                                    }(),
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                  ),
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        onEnter: ((event) async {
                          safeSetState(() => _model.mouseRegionHovered4 = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionHovered4 = false);
                        }),
                      ),
                    if (containerUsuariosRow?.transmissao ?? true)
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().menu = 'transmissoes';
                              safeSetState(() {});

                              context.pushNamed(
                                TransmissoesWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 12.0,
                                    color: FFAppState().menu == 'transmissoes'
                                        ? Color(0x6E3B82F6)
                                        : Colors.white,
                                    offset: Offset(
                                      0.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                gradient: LinearGradient(
                                  colors: [
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'transmissoes'
                                          ? FlutterFlowTheme.of(context).primary
                                          : Colors.white,
                                      Colors.white,
                                    ),
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'transmissoes'
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : Colors.white,
                                      Colors.white,
                                    )
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.94, -1.0),
                                  end: AlignmentDirectional(-0.94, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.locationArrow,
                                      color: valueOrDefault<Color>(
                                        () {
                                          if (_model.mouseRegionHovered5!) {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          } else if (FFAppState().menu ==
                                              'transmissoes') {
                                            return Colors.white;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryText;
                                          }
                                        }(),
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                      size: 24.0,
                                    ),
                                    if (_model.abrirFechar == 'aberto')
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '40gyn0g0' /* Transmissões */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    () {
                                                      if (_model
                                                          .mouseRegionHovered5!) {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .primary;
                                                      } else if (FFAppState()
                                                              .menu ==
                                                          'transmissoes') {
                                                        return Colors.white;
                                                      } else {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryText;
                                                      }
                                                    }(),
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                  ),
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        onEnter: ((event) async {
                          safeSetState(() => _model.mouseRegionHovered5 = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionHovered5 = false);
                        }),
                      ),
                    if (containerUsuariosRow?.cidadaos ?? true)
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().menu = 'cidadaos';
                              safeSetState(() {});

                              context.pushNamed(
                                CidadoesWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 12.0,
                                    color: FFAppState().menu == 'cidadaos'
                                        ? Color(0x6E3B82F6)
                                        : Colors.white,
                                    offset: Offset(
                                      0.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                gradient: LinearGradient(
                                  colors: [
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'cidadaos'
                                          ? FlutterFlowTheme.of(context).primary
                                          : Colors.white,
                                      Colors.white,
                                    ),
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'cidadaos'
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : Colors.white,
                                      Colors.white,
                                    )
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.94, -1.0),
                                  end: AlignmentDirectional(-0.94, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.users,
                                      color: valueOrDefault<Color>(
                                        () {
                                          if (_model.mouseRegionHovered6!) {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          } else if (FFAppState().menu ==
                                              'cidadaos') {
                                            return Colors.white;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryText;
                                          }
                                        }(),
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                      size: 18.0,
                                    ),
                                    if (_model.abrirFechar == 'aberto')
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              't3q9ur24' /* Cidadãos */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    () {
                                                      if (_model
                                                          .mouseRegionHovered6!) {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .primary;
                                                      } else if (FFAppState()
                                                              .menu ==
                                                          'cidadaos') {
                                                        return Colors.white;
                                                      } else {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryText;
                                                      }
                                                    }(),
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                  ),
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        onEnter: ((event) async {
                          safeSetState(() => _model.mouseRegionHovered6 = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionHovered6 = false);
                        }),
                      ),
                    if (containerUsuariosRow?.acessores ?? true)
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().menu = 'acessores';
                              safeSetState(() {});

                              context.pushNamed(
                                AcessoresWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 12.0,
                                    color: FFAppState().menu == 'acessores'
                                        ? Color(0x6E3B82F6)
                                        : Colors.white,
                                    offset: Offset(
                                      0.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                gradient: LinearGradient(
                                  colors: [
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'acessores'
                                          ? FlutterFlowTheme.of(context).primary
                                          : Colors.white,
                                      Colors.white,
                                    ),
                                    valueOrDefault<Color>(
                                      FFAppState().menu == 'acessores'
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : Colors.white,
                                      Colors.white,
                                    )
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.94, -1.0),
                                  end: AlignmentDirectional(-0.94, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.people,
                                      color: valueOrDefault<Color>(
                                        () {
                                          if (_model.mouseRegionHovered7!) {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          } else if (FFAppState().menu ==
                                              'acessores') {
                                            return Colors.white;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryText;
                                          }
                                        }(),
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                      size: 18.0,
                                    ),
                                    if (_model.abrirFechar == 'aberto')
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'kj6933jo' /* Acessores */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    () {
                                                      if (_model
                                                          .mouseRegionHovered7!) {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .primary;
                                                      } else if (FFAppState()
                                                              .menu ==
                                                          'acessores') {
                                                        return Colors.white;
                                                      } else {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryText;
                                                      }
                                                    }(),
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                  ),
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        onEnter: ((event) async {
                          safeSetState(() => _model.mouseRegionHovered7 = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionHovered7 = false);
                        }),
                      ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().menu = 'notificacoes';
                            safeSetState(() {});

                            context.pushNamed(
                              NotificacoesWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 12.0,
                                  color: FFAppState().menu == 'acessores'
                                      ? Color(0x6E3B82F6)
                                      : Colors.white,
                                  offset: Offset(
                                    0.0,
                                    5.0,
                                  ),
                                )
                              ],
                              gradient: LinearGradient(
                                colors: [
                                  valueOrDefault<Color>(
                                    FFAppState().menu == 'acessores'
                                        ? FlutterFlowTheme.of(context).primary
                                        : Colors.white,
                                    Colors.white,
                                  ),
                                  valueOrDefault<Color>(
                                    FFAppState().menu == 'acessores'
                                        ? FlutterFlowTheme.of(context).secondary
                                        : Colors.white,
                                    Colors.white,
                                  )
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.94, -1.0),
                                end: AlignmentDirectional(-0.94, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.notifications_none_rounded,
                                    color: valueOrDefault<Color>(
                                      () {
                                        if (_model.mouseRegionHovered8!) {
                                          return FlutterFlowTheme.of(context)
                                              .primary;
                                        } else if (FFAppState().menu ==
                                            'notificacoes') {
                                          return Colors.white;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .secondaryText;
                                        }
                                      }(),
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                    size: 18.0,
                                  ),
                                  if (_model.abrirFechar == 'aberto')
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'w5dfejcv' /* Notificações */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: valueOrDefault<Color>(
                                                  () {
                                                    if (_model
                                                        .mouseRegionHovered8!) {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (FFAppState()
                                                            .menu ==
                                                        'notificacoes') {
                                                      return Colors.white;
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    }
                                                  }(),
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                                ),
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered8 = true);
                      }),
                      onExit: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered8 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().menu = 'perfil';
                            safeSetState(() {});

                            context.pushNamed(
                              PerfilWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 12.0,
                                  color: FFAppState().menu == 'perfil'
                                      ? Color(0x6E3B82F6)
                                      : Colors.white,
                                  offset: Offset(
                                    0.0,
                                    5.0,
                                  ),
                                )
                              ],
                              gradient: LinearGradient(
                                colors: [
                                  valueOrDefault<Color>(
                                    FFAppState().menu == 'perfil'
                                        ? FlutterFlowTheme.of(context).primary
                                        : Colors.white,
                                    Colors.white,
                                  ),
                                  valueOrDefault<Color>(
                                    FFAppState().menu == 'perfil'
                                        ? FlutterFlowTheme.of(context).secondary
                                        : Colors.white,
                                    Colors.white,
                                  )
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.94, -1.0),
                                end: AlignmentDirectional(-0.94, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: valueOrDefault<Color>(
                                      () {
                                        if (_model.mouseRegionHovered9!) {
                                          return FlutterFlowTheme.of(context)
                                              .primary;
                                        } else if (FFAppState().menu ==
                                            'perfil') {
                                          return Colors.white;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .secondaryText;
                                        }
                                      }(),
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                    size: 18.0,
                                  ),
                                  if (_model.abrirFechar == 'aberto')
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'j82o6uwt' /* Perfil */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: valueOrDefault<Color>(
                                                  () {
                                                    if (_model
                                                        .mouseRegionHovered9!) {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (FFAppState()
                                                            .menu ==
                                                        'perfil') {
                                                      return Colors.white;
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    }
                                                  }(),
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                                ),
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered9 = true);
                      }),
                      onExit: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered9 = false);
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
