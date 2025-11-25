import '/components/modal_sections/solicitacaot_details_alt/solicitacaot_details_alt_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'solicit_details_d_e_s_a_t_i_v_a_d_o_model.dart';
export 'solicit_details_d_e_s_a_t_i_v_a_d_o_model.dart';

class SolicitDetailsDESATIVADOWidget extends StatefulWidget {
  const SolicitDetailsDESATIVADOWidget({
    super.key,
    required this.solidId,
  });

  final String? solidId;

  static String routeName = 'solicitDetailsDESATIVADO';
  static String routePath = 'solicitDetailsDESATIVADO';

  @override
  State<SolicitDetailsDESATIVADOWidget> createState() =>
      _SolicitDetailsDESATIVADOWidgetState();
}

class _SolicitDetailsDESATIVADOWidgetState
    extends State<SolicitDetailsDESATIVADOWidget> {
  late SolicitDetailsDESATIVADOModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SolicitDetailsDESATIVADOModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.solicitacaotDetailsAltModel,
            updateCallback: () => safeSetState(() {}),
            child: SolicitacaotDetailsAltWidget(),
          ),
        ),
      ),
    );
  }
}
