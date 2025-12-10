import '../database.dart';

class MensagensTable extends SupabaseTable<MensagensRow> {
  @override
  String get tableName => 'mensagens';

  @override
  MensagensRow createRow(Map<String, dynamic> data) => MensagensRow(data);
}

class MensagensRow extends SupabaseDataRow {
  MensagensRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MensagensTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get gabinete => getField<int>('gabinete');
  set gabinete(int? value) => setField<int>('gabinete', value);

  int? get cidadao => getField<int>('cidadao');
  set cidadao(int? value) => setField<int>('cidadao', value);

  String? get mensagem => getField<String>('mensagem');
  set mensagem(String? value) => setField<String>('mensagem', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get idMensagem => getField<String>('id_mensagem');
  set idMensagem(String? value) => setField<String>('id_mensagem', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  int? get dataMilisegundos => getField<int>('data_milisegundos');
  set dataMilisegundos(int? value) => setField<int>('data_milisegundos', value);

  int? get atendimento => getField<int>('atendimento');
  set atendimento(int? value) => setField<int>('atendimento', value);
}
