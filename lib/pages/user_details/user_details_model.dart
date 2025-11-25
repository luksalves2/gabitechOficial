import '/components/modal_sections/modal_user/modal_user_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'user_details_widget.dart' show UserDetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserDetailsModel extends FlutterFlowModel<UserDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for modal_User component.
  late ModalUserModel modalUserModel;

  @override
  void initState(BuildContext context) {
    modalUserModel = createModel(context, () => ModalUserModel());
  }

  @override
  void dispose() {
    modalUserModel.dispose();
  }
}
