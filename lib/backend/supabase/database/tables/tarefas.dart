import '../database.dart';

class TarefasTable extends SupabaseTable<TarefasRow> {
  @override
  String get tableName => 'tarefas';

  @override
  TarefasRow createRow(Map<String, dynamic> data) => TarefasRow(data);
}

class TarefasRow extends SupabaseDataRow {
  TarefasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TarefasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get gabinete => getField<int>('gabinete');
  set gabinete(int? value) => setField<int>('gabinete', value);

  int? get categoria => getField<int>('categoria');
  set categoria(int? value) => setField<int>('categoria', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
