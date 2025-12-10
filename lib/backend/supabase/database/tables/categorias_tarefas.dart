import '../database.dart';

class CategoriasTarefasTable extends SupabaseTable<CategoriasTarefasRow> {
  @override
  String get tableName => 'categorias_tarefas';

  @override
  CategoriasTarefasRow createRow(Map<String, dynamic> data) =>
      CategoriasTarefasRow(data);
}

class CategoriasTarefasRow extends SupabaseDataRow {
  CategoriasTarefasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriasTarefasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get cor => getField<String>('cor');
  set cor(String? value) => setField<String>('cor', value);

  int? get gabinete => getField<int>('gabinete');
  set gabinete(int? value) => setField<int>('gabinete', value);
}
