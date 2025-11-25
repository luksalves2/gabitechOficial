import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _gabineteId = prefs.getString('ff_gabineteId') ?? _gabineteId;
    });
    _safeInit(() {
      _solCategoria = prefs.getString('ff_solCategoria') ?? _solCategoria;
    });
    _safeInit(() {
      _LocalLatlng = prefs
              .getStringList('ff_LocalLatlng')
              ?.map((x) {
                try {
                  return ListLatlngStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _LocalLatlng;
    });
    _safeInit(() {
      _msgAtendimentoStatus =
          prefs.getBool('ff_msgAtendimentoStatus') ?? _msgAtendimentoStatus;
    });
    _safeInit(() {
      _userAvatar = prefs.getString('ff_userAvatar') ?? _userAvatar;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _apStatus = false;
  bool get apStatus => _apStatus;
  set apStatus(bool value) {
    _apStatus = value;
  }

  String _nomeMunicipe = '';
  String get nomeMunicipe => _nomeMunicipe;
  set nomeMunicipe(String value) {
    _nomeMunicipe = value;
  }

  String _regiaoMunicipe = '';
  String get regiaoMunicipe => _regiaoMunicipe;
  set regiaoMunicipe(String value) {
    _regiaoMunicipe = value;
  }

  String _categoriaMunicipe = '';
  String get categoriaMunicipe => _categoriaMunicipe;
  set categoriaMunicipe(String value) {
    _categoriaMunicipe = value;
  }

  /// codigo 1
  String _statusNovoAtendimento = 'Novo Atendimento';
  String get statusNovoAtendimento => _statusNovoAtendimento;
  set statusNovoAtendimento(String value) {
    _statusNovoAtendimento = value;
  }

  /// codigo 2
  String _statusEmAnalise = 'Em Analise';
  String get statusEmAnalise => _statusEmAnalise;
  set statusEmAnalise(String value) {
    _statusEmAnalise = value;
  }

  /// codigo 3
  String _statusConcluido = 'Concluido';
  String get statusConcluido => _statusConcluido;
  set statusConcluido(String value) {
    _statusConcluido = value;
  }

  /// codigo 4
  String _statusEmAtraso = 'Em Atraso';
  String get statusEmAtraso => _statusEmAtraso;
  set statusEmAtraso(String value) {
    _statusEmAtraso = value;
  }

  /// codigo 5
  String _StatusEmAndamento = '';
  String get StatusEmAndamento => _StatusEmAndamento;
  set StatusEmAndamento(String value) {
    _StatusEmAndamento = value;
  }

  /// telefone do cidadao whatsapp
  String _phoneCidadao = '554792216463';
  String get phoneCidadao => _phoneCidadao;
  set phoneCidadao(String value) {
    _phoneCidadao = value;
  }

  /// nome do cidadao whatsApp
  String _nomeCidadao = '';
  String get nomeCidadao => _nomeCidadao;
  set nomeCidadao(String value) {
    _nomeCidadao = value;
  }

  /// imagaem whatApp do cidadao
  String _avatarUrl = '';
  String get avatarUrl => _avatarUrl;
  set avatarUrl(String value) {
    _avatarUrl = value;
  }

  /// count dasboard
  String _novasSolicittacoes = '';
  String get novasSolicittacoes => _novasSolicittacoes;
  set novasSolicittacoes(String value) {
    _novasSolicittacoes = value;
  }

  String _emAndamento = '';
  String get emAndamento => _emAndamento;
  set emAndamento(String value) {
    _emAndamento = value;
  }

  String _concluidos = '';
  String get concluidos => _concluidos;
  set concluidos(String value) {
    _concluidos = value;
  }

  String _emAtraso = '';
  String get emAtraso => _emAtraso;
  set emAtraso(String value) {
    _emAtraso = value;
  }

  String _totalCidadoes = '';
  String get totalCidadoes => _totalCidadoes;
  set totalCidadoes(String value) {
    _totalCidadoes = value;
  }

  String _solicitacoesMesAtual = '';
  String get solicitacoesMesAtual => _solicitacoesMesAtual;
  set solicitacoesMesAtual(String value) {
    _solicitacoesMesAtual = value;
  }

  int _solicitacoesSemanaAtual = 0;
  int get solicitacoesSemanaAtual => _solicitacoesSemanaAtual;
  set solicitacoesSemanaAtual(int value) {
    _solicitacoesSemanaAtual = value;
  }

  int _solicitacoesFinalizadasSemana = 0;
  int get solicitacoesFinalizadasSemana => _solicitacoesFinalizadasSemana;
  set solicitacoesFinalizadasSemana(int value) {
    _solicitacoesFinalizadasSemana = value;
  }

  int _solicitacoesEmAndamentoSemana = 0;
  int get solicitacoesEmAndamentoSemana => _solicitacoesEmAndamentoSemana;
  set solicitacoesEmAndamentoSemana(int value) {
    _solicitacoesEmAndamentoSemana = value;
  }

  int _solicitacoesIniciadasSemana = 0;
  int get solicitacoesIniciadasSemana => _solicitacoesIniciadasSemana;
  set solicitacoesIniciadasSemana(int value) {
    _solicitacoesIniciadasSemana = value;
  }

  List<String> _categorias = [];
  List<String> get categorias => _categorias;
  set categorias(List<String> value) {
    _categorias = value;
  }

  void addToCategorias(String value) {
    categorias.add(value);
  }

  void removeFromCategorias(String value) {
    categorias.remove(value);
  }

  void removeAtIndexFromCategorias(int index) {
    categorias.removeAt(index);
  }

  void updateCategoriasAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    categorias[index] = updateFn(_categorias[index]);
  }

  void insertAtIndexInCategorias(int index, String value) {
    categorias.insert(index, value);
  }

  List<int> _valores = [];
  List<int> get valores => _valores;
  set valores(List<int> value) {
    _valores = value;
  }

  void addToValores(int value) {
    valores.add(value);
  }

  void removeFromValores(int value) {
    valores.remove(value);
  }

  void removeAtIndexFromValores(int index) {
    valores.removeAt(index);
  }

  void updateValoresAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    valores[index] = updateFn(_valores[index]);
  }

  void insertAtIndexInValores(int index, int value) {
    valores.insert(index, value);
  }

  String _UserId = '';
  String get UserId => _UserId;
  set UserId(String value) {
    _UserId = value;
  }

  String _gabineteId = '';
  String get gabineteId => _gabineteId;
  set gabineteId(String value) {
    _gabineteId = value;
    prefs.setString('ff_gabineteId', value);
  }

  String _primeiroDiaMes = '';
  String get primeiroDiaMes => _primeiroDiaMes;
  set primeiroDiaMes(String value) {
    _primeiroDiaMes = value;
  }

  String _categoriaId = '';
  String get categoriaId => _categoriaId;
  set categoriaId(String value) {
    _categoriaId = value;
  }

  String _atividadeId = '';
  String get atividadeId => _atividadeId;
  set atividadeId(String value) {
    _atividadeId = value;
  }

  String _atvResponsavelId = '';
  String get atvResponsavelId => _atvResponsavelId;
  set atvResponsavelId(String value) {
    _atvResponsavelId = value;
  }

  String _atvCategoriaId = '';
  String get atvCategoriaId => _atvCategoriaId;
  set atvCategoriaId(String value) {
    _atvCategoriaId = value;
  }

  String _atvAtividadeId = '';
  String get atvAtividadeId => _atvAtividadeId;
  set atvAtividadeId(String value) {
    _atvAtividadeId = value;
  }

  String _msgPhone = '';
  String get msgPhone => _msgPhone;
  set msgPhone(String value) {
    _msgPhone = value;
  }

  String _msgImagemCidadao = '';
  String get msgImagemCidadao => _msgImagemCidadao;
  set msgImagemCidadao(String value) {
    _msgImagemCidadao = value;
  }

  String _msgNomeCidadao = '';
  String get msgNomeCidadao => _msgNomeCidadao;
  set msgNomeCidadao(String value) {
    _msgNomeCidadao = value;
  }

  String _msgCidadaoID = '00000000-0000-0000-0000-000000000000';
  String get msgCidadaoID => _msgCidadaoID;
  set msgCidadaoID(String value) {
    _msgCidadaoID = value;
  }

  bool _msgEnvio = false;
  bool get msgEnvio => _msgEnvio;
  set msgEnvio(bool value) {
    _msgEnvio = value;
  }

  String _msgimage = '';
  String get msgimage => _msgimage;
  set msgimage(String value) {
    _msgimage = value;
  }

  String _msgVideo = '';
  String get msgVideo => _msgVideo;
  set msgVideo(String value) {
    _msgVideo = value;
  }

  String _msgAudio = '';
  String get msgAudio => _msgAudio;
  set msgAudio(String value) {
    _msgAudio = value;
  }

  String _msgCidadaoId = '';
  String get msgCidadaoId => _msgCidadaoId;
  set msgCidadaoId(String value) {
    _msgCidadaoId = value;
  }

  String _msgCEP = '   ';
  String get msgCEP => _msgCEP;
  set msgCEP(String value) {
    _msgCEP = value;
  }

  String _msgLogradouro = '  ';
  String get msgLogradouro => _msgLogradouro;
  set msgLogradouro(String value) {
    _msgLogradouro = value;
  }

  String _msgCidade = '  ';
  String get msgCidade => _msgCidade;
  set msgCidade(String value) {
    _msgCidade = value;
  }

  String _msgBairro = '  ';
  String get msgBairro => _msgBairro;
  set msgBairro(String value) {
    _msgBairro = value;
  }

  String _msgUF = '  ';
  String get msgUF => _msgUF;
  set msgUF(String value) {
    _msgUF = value;
  }

  String _msgAvatarUrl =
      'https://xwwzsqjgksomniwkvznc.supabase.co/storage/v1/object/sign/imgsistema/ImagemSem.jpeg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9mZTFlNWFhNS1kZmU1LTQ2Y2UtOTFlYy04MDczODg2ZjUyNjkiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJpbWdzaXN0ZW1hL0ltYWdlbVNlbS5qcGVnIiwiaWF0IjoxNzUyMDcyMTAyLCJleHAiOjE4MTUxNDQxMDJ9.-ZxxQX2UewoteIepTDqD8s30AQupMa-oSnD2AqJ-5iY';
  String get msgAvatarUrl => _msgAvatarUrl;
  set msgAvatarUrl(String value) {
    _msgAvatarUrl = value;
  }

  String _msgUserId = '';
  String get msgUserId => _msgUserId;
  set msgUserId(String value) {
    _msgUserId = value;
  }

  String _msgCategoriaId = '';
  String get msgCategoriaId => _msgCategoriaId;
  set msgCategoriaId(String value) {
    _msgCategoriaId = value;
  }

  String _solCategoria = 'not.is.null';
  String get solCategoria => _solCategoria;
  set solCategoria(String value) {
    _solCategoria = value;
    prefs.setString('ff_solCategoria', value);
  }

  String _solTagPrioridadeAlta = '3';
  String get solTagPrioridadeAlta => _solTagPrioridadeAlta;
  set solTagPrioridadeAlta(String value) {
    _solTagPrioridadeAlta = value;
  }

  String _solTagPrioridadeBaixa = '1';
  String get solTagPrioridadeBaixa => _solTagPrioridadeBaixa;
  set solTagPrioridadeBaixa(String value) {
    _solTagPrioridadeBaixa = value;
  }

  String _solTagPrioridadeMedia = '2';
  String get solTagPrioridadeMedia => _solTagPrioridadeMedia;
  set solTagPrioridadeMedia(String value) {
    _solTagPrioridadeMedia = value;
  }

  String _solnomeCategoria = '';
  String get solnomeCategoria => _solnomeCategoria;
  set solnomeCategoria(String value) {
    _solnomeCategoria = value;
  }

  String _mAltUser = '';
  String get mAltUser => _mAltUser;
  set mAltUser(String value) {
    _mAltUser = value;
  }

  String _cidRua = '';
  String get cidRua => _cidRua;
  set cidRua(String value) {
    _cidRua = value;
  }

  String _cidBairro = 'is null';
  String get cidBairro => _cidBairro;
  set cidBairro(String value) {
    _cidBairro = value;
  }

  String _cidGenero = 'is null';
  String get cidGenero => _cidGenero;
  set cidGenero(String value) {
    _cidGenero = value;
  }

  String _msgLido = 'true,false';
  String get msgLido => _msgLido;
  set msgLido(String value) {
    _msgLido = value;
  }

  String _msgGroup = 'is.false';
  String get msgGroup => _msgGroup;
  set msgGroup(String value) {
    _msgGroup = value;
  }

  Color _msgColor = Color(4280982239);
  Color get msgColor => _msgColor;
  set msgColor(Color value) {
    _msgColor = value;
  }

  Color _msgColorDefault = Color(4294046968);
  Color get msgColorDefault => _msgColorDefault;
  set msgColorDefault(Color value) {
    _msgColorDefault = value;
  }

  String _msgConectaWhastsApp = '';
  String get msgConectaWhastsApp => _msgConectaWhastsApp;
  set msgConectaWhastsApp(String value) {
    _msgConectaWhastsApp = value;
  }

  bool _msgStatusWhats = false;
  bool get msgStatusWhats => _msgStatusWhats;
  set msgStatusWhats(bool value) {
    _msgStatusWhats = value;
  }

  bool _homeAdmin = false;
  bool get homeAdmin => _homeAdmin;
  set homeAdmin(bool value) {
    _homeAdmin = value;
  }

  bool _homeDashboard = false;
  bool get homeDashboard => _homeDashboard;
  set homeDashboard(bool value) {
    _homeDashboard = value;
  }

  bool _homeMensagens = false;
  bool get homeMensagens => _homeMensagens;
  set homeMensagens(bool value) {
    _homeMensagens = value;
  }

  bool _homeSolicitacoes = false;
  bool get homeSolicitacoes => _homeSolicitacoes;
  set homeSolicitacoes(bool value) {
    _homeSolicitacoes = value;
  }

  bool _homeCidadaos = false;
  bool get homeCidadaos => _homeCidadaos;
  set homeCidadaos(bool value) {
    _homeCidadaos = value;
  }

  bool _homeAtividades = false;
  bool get homeAtividades => _homeAtividades;
  set homeAtividades(bool value) {
    _homeAtividades = value;
  }

  bool _homeAniversarios = false;
  bool get homeAniversarios => _homeAniversarios;
  set homeAniversarios(bool value) {
    _homeAniversarios = value;
  }

  bool _homeMapas = false;
  bool get homeMapas => _homeMapas;
  set homeMapas(bool value) {
    _homeMapas = value;
  }

  bool _homePerfil = true;
  bool get homePerfil => _homePerfil;
  set homePerfil(bool value) {
    _homePerfil = value;
  }

  String _perfilQRCode = '';
  String get perfilQRCode => _perfilQRCode;
  set perfilQRCode(String value) {
    _perfilQRCode = value;
  }

  String _homeQRcodes = '1';
  String get homeQRcodes => _homeQRcodes;
  set homeQRcodes(String value) {
    _homeQRcodes = value;
  }

  bool _homeqr = false;
  bool get homeqr => _homeqr;
  set homeqr(bool value) {
    _homeqr = value;
  }

  String _ters = '';
  String get ters => _ters;
  set ters(String value) {
    _ters = value;
  }

  List<String> _listNomeHome = [];
  List<String> get listNomeHome => _listNomeHome;
  set listNomeHome(List<String> value) {
    _listNomeHome = value;
  }

  void addToListNomeHome(String value) {
    listNomeHome.add(value);
  }

  void removeFromListNomeHome(String value) {
    listNomeHome.remove(value);
  }

  void removeAtIndexFromListNomeHome(int index) {
    listNomeHome.removeAt(index);
  }

  void updateListNomeHomeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listNomeHome[index] = updateFn(_listNomeHome[index]);
  }

  void insertAtIndexInListNomeHome(int index, String value) {
    listNomeHome.insert(index, value);
  }

  List<int> _listValorHome = [];
  List<int> get listValorHome => _listValorHome;
  set listValorHome(List<int> value) {
    _listValorHome = value;
  }

  void addToListValorHome(int value) {
    listValorHome.add(value);
  }

  void removeFromListValorHome(int value) {
    listValorHome.remove(value);
  }

  void removeAtIndexFromListValorHome(int index) {
    listValorHome.removeAt(index);
  }

  void updateListValorHomeAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    listValorHome[index] = updateFn(_listValorHome[index]);
  }

  void insertAtIndexInListValorHome(int index, int value) {
    listValorHome.insert(index, value);
  }

  bool _msgStatusWtt = false;
  bool get msgStatusWtt => _msgStatusWtt;
  set msgStatusWtt(bool value) {
    _msgStatusWtt = value;
  }

  bool _msgIsGroup = false;
  bool get msgIsGroup => _msgIsGroup;
  set msgIsGroup(bool value) {
    _msgIsGroup = value;
  }

  List<String> _msglidoString = [];
  List<String> get msglidoString => _msglidoString;
  set msglidoString(List<String> value) {
    _msglidoString = value;
  }

  void addToMsglidoString(String value) {
    msglidoString.add(value);
  }

  void removeFromMsglidoString(String value) {
    msglidoString.remove(value);
  }

  void removeAtIndexFromMsglidoString(int index) {
    msglidoString.removeAt(index);
  }

  void updateMsglidoStringAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    msglidoString[index] = updateFn(_msglidoString[index]);
  }

  void insertAtIndexInMsglidoString(int index, String value) {
    msglidoString.insert(index, value);
  }

  List<String> _msgTrue = ['true'];
  List<String> get msgTrue => _msgTrue;
  set msgTrue(List<String> value) {
    _msgTrue = value;
  }

  void addToMsgTrue(String value) {
    msgTrue.add(value);
  }

  void removeFromMsgTrue(String value) {
    msgTrue.remove(value);
  }

  void removeAtIndexFromMsgTrue(int index) {
    msgTrue.removeAt(index);
  }

  void updateMsgTrueAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    msgTrue[index] = updateFn(_msgTrue[index]);
  }

  void insertAtIndexInMsgTrue(int index, String value) {
    msgTrue.insert(index, value);
  }

  List<String> _msgFalse = ['false'];
  List<String> get msgFalse => _msgFalse;
  set msgFalse(List<String> value) {
    _msgFalse = value;
  }

  void addToMsgFalse(String value) {
    msgFalse.add(value);
  }

  void removeFromMsgFalse(String value) {
    msgFalse.remove(value);
  }

  void removeAtIndexFromMsgFalse(int index) {
    msgFalse.removeAt(index);
  }

  void updateMsgFalseAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    msgFalse[index] = updateFn(_msgFalse[index]);
  }

  void insertAtIndexInMsgFalse(int index, String value) {
    msgFalse.insert(index, value);
  }

  List<String> _msgFalseTrue = ['true', 'false'];
  List<String> get msgFalseTrue => _msgFalseTrue;
  set msgFalseTrue(List<String> value) {
    _msgFalseTrue = value;
  }

  void addToMsgFalseTrue(String value) {
    msgFalseTrue.add(value);
  }

  void removeFromMsgFalseTrue(String value) {
    msgFalseTrue.remove(value);
  }

  void removeAtIndexFromMsgFalseTrue(int index) {
    msgFalseTrue.removeAt(index);
  }

  void updateMsgFalseTrueAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    msgFalseTrue[index] = updateFn(_msgFalseTrue[index]);
  }

  void insertAtIndexInMsgFalseTrue(int index, String value) {
    msgFalseTrue.insert(index, value);
  }

  int _defautColor = 0;
  int get defautColor => _defautColor;
  set defautColor(int value) {
    _defautColor = value;
  }

  String _phoneAdmin = '';
  String get phoneAdmin => _phoneAdmin;
  set phoneAdmin(String value) {
    _phoneAdmin = value;
  }

  bool _statusSempre = false;
  bool get statusSempre => _statusSempre;
  set statusSempre(bool value) {
    _statusSempre = value;
  }

  String _msgErr = '';
  String get msgErr => _msgErr;
  set msgErr(String value) {
    _msgErr = value;
  }

  String _loginEmail = '';
  String get loginEmail => _loginEmail;
  set loginEmail(String value) {
    _loginEmail = value;
  }

  String _loginNome = '';
  String get loginNome => _loginNome;
  set loginNome(String value) {
    _loginNome = value;
  }

  String _loginFoto = '';
  String get loginFoto => _loginFoto;
  set loginFoto(String value) {
    _loginFoto = value;
  }

  List<LatLng> _latlng = [];
  List<LatLng> get latlng => _latlng;
  set latlng(List<LatLng> value) {
    _latlng = value;
  }

  void addToLatlng(LatLng value) {
    latlng.add(value);
  }

  void removeFromLatlng(LatLng value) {
    latlng.remove(value);
  }

  void removeAtIndexFromLatlng(int index) {
    latlng.removeAt(index);
  }

  void updateLatlngAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    latlng[index] = updateFn(_latlng[index]);
  }

  void insertAtIndexInLatlng(int index, LatLng value) {
    latlng.insert(index, value);
  }

  List<ListLatlngStruct> _LocalLatlng = [];
  List<ListLatlngStruct> get LocalLatlng => _LocalLatlng;
  set LocalLatlng(List<ListLatlngStruct> value) {
    _LocalLatlng = value;
    prefs.setStringList(
        'ff_LocalLatlng', value.map((x) => x.serialize()).toList());
  }

  void addToLocalLatlng(ListLatlngStruct value) {
    LocalLatlng.add(value);
    prefs.setStringList(
        'ff_LocalLatlng', _LocalLatlng.map((x) => x.serialize()).toList());
  }

  void removeFromLocalLatlng(ListLatlngStruct value) {
    LocalLatlng.remove(value);
    prefs.setStringList(
        'ff_LocalLatlng', _LocalLatlng.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromLocalLatlng(int index) {
    LocalLatlng.removeAt(index);
    prefs.setStringList(
        'ff_LocalLatlng', _LocalLatlng.map((x) => x.serialize()).toList());
  }

  void updateLocalLatlngAtIndex(
    int index,
    ListLatlngStruct Function(ListLatlngStruct) updateFn,
  ) {
    LocalLatlng[index] = updateFn(_LocalLatlng[index]);
    prefs.setStringList(
        'ff_LocalLatlng', _LocalLatlng.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInLocalLatlng(int index, ListLatlngStruct value) {
    LocalLatlng.insert(index, value);
    prefs.setStringList(
        'ff_LocalLatlng', _LocalLatlng.map((x) => x.serialize()).toList());
  }

  bool _msgAtendimentoStatus = false;
  bool get msgAtendimentoStatus => _msgAtendimentoStatus;
  set msgAtendimentoStatus(bool value) {
    _msgAtendimentoStatus = value;
    prefs.setBool('ff_msgAtendimentoStatus', value);
  }

  bool _msgEnvioImageVideoPdf = false;
  bool get msgEnvioImageVideoPdf => _msgEnvioImageVideoPdf;
  set msgEnvioImageVideoPdf(bool value) {
    _msgEnvioImageVideoPdf = value;
  }

  String _imgW =
      'https://xwwzsqjgksomniwkvznc.supabase.co/storage/v1/object/sign/imgsistema/ImagemSem.jpeg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9mZTFlNWFhNS1kZmU1LTQ2Y2UtOTFlYy04MDczODg2ZjUyNjkiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJpbWdzaXN0ZW1hL0ltYWdlbVNlbS5qcGVnIiwiaWF0IjoxNzUyMDcyMTAyLCJleHAiOjE4MTUxNDQxMDJ9.-ZxxQX2UewoteIepTDqD8s30AQupMa-oSnD2AqJ-5iY';
  String get imgW => _imgW;
  set imgW(String value) {
    _imgW = value;
  }

  String _filtrochat = 'todos';
  String get filtrochat => _filtrochat;
  set filtrochat(String value) {
    _filtrochat = value;
  }

  bool _filtrochatGroup = false;
  bool get filtrochatGroup => _filtrochatGroup;
  set filtrochatGroup(bool value) {
    _filtrochatGroup = value;
  }

  bool _sfalse = false;
  bool get sfalse => _sfalse;
  set sfalse(bool value) {
    _sfalse = value;
  }

  String _msgst = '';
  String get msgst => _msgst;
  set msgst(String value) {
    _msgst = value;
  }

  bool _msgFinish = false;
  bool get msgFinish => _msgFinish;
  set msgFinish(bool value) {
    _msgFinish = value;
  }

  List<String> _listAvatar = ['', ''];
  List<String> get listAvatar => _listAvatar;
  set listAvatar(List<String> value) {
    _listAvatar = value;
  }

  void addToListAvatar(String value) {
    listAvatar.add(value);
  }

  void removeFromListAvatar(String value) {
    listAvatar.remove(value);
  }

  void removeAtIndexFromListAvatar(int index) {
    listAvatar.removeAt(index);
  }

  void updateListAvatarAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listAvatar[index] = updateFn(_listAvatar[index]);
  }

  void insertAtIndexInListAvatar(int index, String value) {
    listAvatar.insert(index, value);
  }

  String _msgPhonChatAtual = '';
  String get msgPhonChatAtual => _msgPhonChatAtual;
  set msgPhonChatAtual(String value) {
    _msgPhonChatAtual = value;
  }

  String _msgPhoneRealtime = '';
  String get msgPhoneRealtime => _msgPhoneRealtime;
  set msgPhoneRealtime(String value) {
    _msgPhoneRealtime = value;
  }

  String _msgLidoText = '';
  String get msgLidoText => _msgLidoText;
  set msgLidoText(String value) {
    _msgLidoText = value;
  }

  String _cidadaoBairro = '';
  String get cidadaoBairro => _cidadaoBairro;
  set cidadaoBairro(String value) {
    _cidadaoBairro = value;
  }

  String _cidadaoCategoria = '';
  String get cidadaoCategoria => _cidadaoCategoria;
  set cidadaoCategoria(String value) {
    _cidadaoCategoria = value;
  }

  int _msgDocument = 0;
  int get msgDocument => _msgDocument;
  set msgDocument(int value) {
    _msgDocument = value;
  }

  int _msgProgVideo = 0;
  int get msgProgVideo => _msgProgVideo;
  set msgProgVideo(int value) {
    _msgProgVideo = value;
  }

  String _msgProgImagem = '';
  String get msgProgImagem => _msgProgImagem;
  set msgProgImagem(String value) {
    _msgProgImagem = value;
  }

  int _msgProgVoltar = 0;
  int get msgProgVoltar => _msgProgVoltar;
  set msgProgVoltar(int value) {
    _msgProgVoltar = value;
  }

  String _msgProgDataPicker = '';
  String get msgProgDataPicker => _msgProgDataPicker;
  set msgProgDataPicker(String value) {
    _msgProgDataPicker = value;
  }

  String _msgProgCountCategoriaBairro = '';
  String get msgProgCountCategoriaBairro => _msgProgCountCategoriaBairro;
  set msgProgCountCategoriaBairro(String value) {
    _msgProgCountCategoriaBairro = value;
  }

  String _userAvatar = '';
  String get userAvatar => _userAvatar;
  set userAvatar(String value) {
    _userAvatar = value;
    prefs.setString('ff_userAvatar', value);
  }

  int _diasSLA = 0;
  int get diasSLA => _diasSLA;
  set diasSLA(int value) {
    _diasSLA = value;
  }

  DateTime? _msgDataPrazo;
  DateTime? get msgDataPrazo => _msgDataPrazo;
  set msgDataPrazo(DateTime? value) {
    _msgDataPrazo = value;
  }

  bool _sempreFalso = false;
  bool get sempreFalso => _sempreFalso;
  set sempreFalso(bool value) {
    _sempreFalso = value;
  }

  bool _homeTransmissoes = false;
  bool get homeTransmissoes => _homeTransmissoes;
  set homeTransmissoes(bool value) {
    _homeTransmissoes = value;
  }

  bool _homeNotificacoes = false;
  bool get homeNotificacoes => _homeNotificacoes;
  set homeNotificacoes(bool value) {
    _homeNotificacoes = value;
  }

  bool _hometutoriais = false;
  bool get hometutoriais => _hometutoriais;
  set hometutoriais(bool value) {
    _hometutoriais = value;
  }

  bool _telaDuvidas = false;
  bool get telaDuvidas => _telaDuvidas;
  set telaDuvidas(bool value) {
    _telaDuvidas = value;
  }

  String _perfilImageUser = '';
  String get perfilImageUser => _perfilImageUser;
  set perfilImageUser(String value) {
    _perfilImageUser = value;
  }

  bool _emAnaliseLane = false;
  bool get emAnaliseLane => _emAnaliseLane;
  set emAnaliseLane(bool value) {
    _emAnaliseLane = value;
  }

  bool _emAndamentoLane = false;
  bool get emAndamentoLane => _emAndamentoLane;
  set emAndamentoLane(bool value) {
    _emAndamentoLane = value;
  }

  bool _finalizadosLane = false;
  bool get finalizadosLane => _finalizadosLane;
  set finalizadosLane(bool value) {
    _finalizadosLane = value;
  }

  bool _emAtrasoLane = false;
  bool get emAtrasoLane => _emAtrasoLane;
  set emAtrasoLane(bool value) {
    _emAtrasoLane = value;
  }

  bool _programadoLane = false;
  bool get programadoLane => _programadoLane;
  set programadoLane(bool value) {
    _programadoLane = value;
  }

  bool _aguardandoRetornoLane = false;
  bool get aguardandoRetornoLane => _aguardandoRetornoLane;
  set aguardandoRetornoLane(bool value) {
    _aguardandoRetornoLane = value;
  }

  bool _canceladasLane = false;
  bool get canceladasLane => _canceladasLane;
  set canceladasLane(bool value) {
    _canceladasLane = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
