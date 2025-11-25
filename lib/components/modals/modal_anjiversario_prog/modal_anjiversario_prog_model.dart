import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'modal_anjiversario_prog_widget.dart' show ModalAnjiversarioProgWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ModalAnjiversarioProgModel
    extends FlutterFlowModel<ModalAnjiversarioProgWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6cliuirk' /* Por favor, insira uma breve de... */,
      );
    }

    return null;
  }

  // State field(s) for agendamento_text widget.
  FocusNode? agendamentoTextFocusNode;
  TextEditingController? agendamentoTextTextController;
  late MaskTextInputFormatter agendamentoTextMask;
  String? Function(BuildContext, String?)?
      agendamentoTextTextControllerValidator;
  String? _agendamentoTextTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nl36fkmq' /* Agendamento é obrigatório */,
      );
    }

    return null;
  }

  DateTime? datePicked;
  bool isDataUploading_uploadDataDocument = false;
  FFUploadedFile uploadedLocalFile_uploadDataDocument =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataDocument = '';

  @override
  void initState(BuildContext context) {
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    agendamentoTextTextControllerValidator =
        _agendamentoTextTextControllerValidator;
  }

  @override
  void dispose() {
    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    agendamentoTextFocusNode?.dispose();
    agendamentoTextTextController?.dispose();
  }
}
