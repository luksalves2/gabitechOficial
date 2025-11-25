import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'modal_create_mensagem_widget.dart' show ModalCreateMensagemWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ModalCreateMensagemModel
    extends FlutterFlowModel<ModalCreateMensagemWidget> {
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
        '3nv1b1dr' /* Por favor, insira uma breve de... */,
      );
    }

    return null;
  }

  // State field(s) for DropDownBairro widget.
  String? dropDownBairroValue;
  FormFieldController<String>? dropDownBairroValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDownBairro widget.
  List<ContagemCidadaoBairroCategoriaRow>? outBairro;
  // State field(s) for DropDownCategoria widget.
  String? dropDownCategoriaValue;
  FormFieldController<String>? dropDownCategoriaValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDownCategoria widget.
  List<ContagemCidadaoBairroCategoriaRow>? outBairroComBairro;
  // Stores action output result for [Backend Call - Query Rows] action in DropDownCategoria widget.
  List<ContagemCidadaoBairroCategoriaRow>? outBairroSemBairro;
  // State field(s) for DropDowntag widget.
  String? dropDowntagValue;
  FormFieldController<String>? dropDowntagValueController;
  // State field(s) for DropDownGenero widget.
  String? dropDownGeneroValue;
  FormFieldController<String>? dropDownGeneroValueController;
  // State field(s) for DropDownTimer widget.
  String? dropDownTimerValue;
  FormFieldController<String>? dropDownTimerValueController;
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
        '06rvinz1' /* Agendamento é obrigatório */,
      );
    }

    return null;
  }

  DateTime? datePicked;
  bool isDataUploading_uploadDataDocumentProgCidadao = false;
  FFUploadedFile uploadedLocalFile_uploadDataDocumentProgCidadao =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataDocumentProgCidadao = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  MensagensProgramadasRow? iNSoUT;

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
