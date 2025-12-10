import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  int? get gabinete => getField<int>('gabinete');
  set gabinete(int? value) => setField<int>('gabinete', value);

  DateTime? get ultimaAtualizacao => getField<DateTime>('ultima_atualizacao');
  set ultimaAtualizacao(DateTime? value) =>
      setField<DateTime>('ultima_atualizacao', value);

  bool? get atendimento => getField<bool>('atendimento');
  set atendimento(bool? value) => setField<bool>('atendimento', value);

  bool? get solicitacoes => getField<bool>('solicitacoes');
  set solicitacoes(bool? value) => setField<bool>('solicitacoes', value);

  bool? get cidadaos => getField<bool>('cidadaos');
  set cidadaos(bool? value) => setField<bool>('cidadaos', value);

  bool? get atividades => getField<bool>('atividades');
  set atividades(bool? value) => setField<bool>('atividades', value);

  bool? get dashboard => getField<bool>('dashboard');
  set dashboard(bool? value) => setField<bool>('dashboard', value);

  bool? get acessores => getField<bool>('acessores');
  set acessores(bool? value) => setField<bool>('acessores', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  bool? get transmissao => getField<bool>('transmissao');
  set transmissao(bool? value) => setField<bool>('transmissao', value);
}
