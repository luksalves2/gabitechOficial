import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'criar_campanha_widget.dart' show CriarCampanhaWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CriarCampanhaModel extends FlutterFlowModel<CriarCampanhaWidget> {
  ///  Local state fields for this component.

  String? dataSelecionada;

  String? horaSelecionada;

  List<String> bairrosSelecionados = [];
  void addToBairrosSelecionados(String item) => bairrosSelecionados.add(item);
  void removeFromBairrosSelecionados(String item) =>
      bairrosSelecionados.remove(item);
  void removeAtIndexFromBairrosSelecionados(int index) =>
      bairrosSelecionados.removeAt(index);
  void insertAtIndexInBairrosSelecionados(int index, String item) =>
      bairrosSelecionados.insert(index, item);
  void updateBairrosSelecionadosAtIndex(int index, Function(String) updateFn) =>
      bairrosSelecionados[index] = updateFn(bairrosSelecionados[index]);

  List<String> perfisSelecionados = [];
  void addToPerfisSelecionados(String item) => perfisSelecionados.add(item);
  void removeFromPerfisSelecionados(String item) =>
      perfisSelecionados.remove(item);
  void removeAtIndexFromPerfisSelecionados(int index) =>
      perfisSelecionados.removeAt(index);
  void insertAtIndexInPerfisSelecionados(int index, String item) =>
      perfisSelecionados.insert(index, item);
  void updatePerfisSelecionadosAtIndex(int index, Function(String) updateFn) =>
      perfisSelecionados[index] = updateFn(perfisSelecionados[index]);

  String? midiaEnviada;

  String? menu;

  ///  State fields for stateful widgets in this component.

  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloTextController;
  String? Function(BuildContext, String?)? txtTituloTextControllerValidator;
  // State field(s) for txtMensagem widget.
  FocusNode? txtMensagemFocusNode;
  TextEditingController? txtMensagemTextController;
  String? Function(BuildContext, String?)? txtMensagemTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for dropGenero widget.
  String? dropGeneroValue;
  FormFieldController<String>? dropGeneroValueController;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  bool isDataUploading_carregarArquivo = false;
  FFUploadedFile uploadedLocalFile_carregarArquivo =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_carregarArquivo = '';

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  bool isDataUploading_carregarImagem = false;
  FFUploadedFile uploadedLocalFile_carregarImagem =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_carregarImagem = '';

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  bool isDataUploading_carregarVideo = false;
  FFUploadedFile uploadedLocalFile_carregarVideo =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_carregarVideo = '';

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // Stores action output result for [Backend Call - API (Filtros Cidadaos Campanha)] action in Button widget.
  ApiCallResponse? buscarCidadaosFiltrados;
  // Stores action output result for [Backend Call - API (Mensagens em Massa Texto)] action in Button widget.
  ApiCallResponse? campanhaTexto;
  // Stores action output result for [Backend Call - API (Filtros Cidadaos Campanha)] action in Button widget.
  ApiCallResponse? buscarCidadaosFiltradosArquivos;
  // Stores action output result for [Backend Call - API (Mensagens em Massa Arquivos)] action in Button widget.
  ApiCallResponse? campanhaArquivos;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtTituloFocusNode?.dispose();
    txtTituloTextController?.dispose();

    txtMensagemFocusNode?.dispose();
    txtMensagemTextController?.dispose();
  }
}
