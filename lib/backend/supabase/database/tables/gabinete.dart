import '../database.dart';

class GabineteTable extends SupabaseTable<GabineteRow> {
  @override
  String get tableName => 'gabinete';

  @override
  GabineteRow createRow(Map<String, dynamic> data) => GabineteRow(data);
}

class GabineteRow extends SupabaseDataRow {
  GabineteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GabineteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get instancia => getField<String>('instancia');
  set instancia(String? value) => setField<String>('instancia', value);

  String? get token => getField<String>('token');
  set token(String? value) => setField<String>('token', value);

  List<String> get acessores => getListField<String>('acessores');
  set acessores(List<String>? value) =>
      setListField<String>('acessores', value);

  String? get prazoSolicitacoes => getField<String>('prazo_solicitacoes');
  set prazoSolicitacoes(String? value) =>
      setField<String>('prazo_solicitacoes', value);
}
