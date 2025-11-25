import '/components/modal_sections/solicitacaot_details_alt/solicitacaot_details_alt_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'solicit_details_d_e_s_a_t_i_v_a_d_o_widget.dart'
    show SolicitDetailsDESATIVADOWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SolicitDetailsDESATIVADOModel
    extends FlutterFlowModel<SolicitDetailsDESATIVADOWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for solicitacaotDetails_alt component.
  late SolicitacaotDetailsAltModel solicitacaotDetailsAltModel;

  @override
  void initState(BuildContext context) {
    solicitacaotDetailsAltModel =
        createModel(context, () => SolicitacaotDetailsAltModel());
  }

  @override
  void dispose() {
    solicitacaotDetailsAltModel.dispose();
  }
}
