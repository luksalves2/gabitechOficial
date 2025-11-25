import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get displayNome => getField<String>('display_nome');
  set displayNome(String? value) => setField<String>('display_nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get segmentoUser => getField<String>('segmento_user');
  set segmentoUser(String? value) => setField<String>('segmento_user', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  bool? get admin => getField<bool>('admin');
  set admin(bool? value) => setField<bool>('admin', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  bool? get telaVisaoGeral => getField<bool>('tela_visao_geral');
  set telaVisaoGeral(bool? value) => setField<bool>('tela_visao_geral', value);

  bool? get telaMensagens => getField<bool>('tela_mensagens');
  set telaMensagens(bool? value) => setField<bool>('tela_mensagens', value);

  bool? get telaSolicitacoes => getField<bool>('tela_solicitacoes');
  set telaSolicitacoes(bool? value) =>
      setField<bool>('tela_solicitacoes', value);

  bool? get telaCidadaos => getField<bool>('tela_cidadaos');
  set telaCidadaos(bool? value) => setField<bool>('tela_cidadaos', value);

  bool? get telaAtividades => getField<bool>('tela_atividades');
  set telaAtividades(bool? value) => setField<bool>('tela_atividades', value);

  bool? get telaAniversarios => getField<bool>('tela_aniversarios');
  set telaAniversarios(bool? value) =>
      setField<bool>('tela_aniversarios', value);

  bool? get telaMapas => getField<bool>('tela_mapas');
  set telaMapas(bool? value) => setField<bool>('tela_mapas', value);

  bool? get telaPerfil => getField<bool>('tela_perfil');
  set telaPerfil(bool? value) => setField<bool>('tela_perfil', value);

  int? get diasSla => getField<int>('dias_sla');
  set diasSla(int? value) => setField<int>('dias_sla', value);

  bool? get telaTransmissoes => getField<bool>('tela_transmissoes');
  set telaTransmissoes(bool? value) =>
      setField<bool>('tela_transmissoes', value);

  bool? get telaNotificacoes => getField<bool>('tela_notificacoes');
  set telaNotificacoes(bool? value) =>
      setField<bool>('tela_notificacoes', value);

  bool? get telaTutoriais => getField<bool>('tela_tutoriais');
  set telaTutoriais(bool? value) => setField<bool>('tela_tutoriais', value);

  bool? get telaDuvidas => getField<bool>('tela_duvidas');
  set telaDuvidas(bool? value) => setField<bool>('tela_duvidas', value);
}
