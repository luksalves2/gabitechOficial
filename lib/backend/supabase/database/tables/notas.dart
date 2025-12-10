import '../database.dart';

class NotasTable extends SupabaseTable<NotasRow> {
  @override
  String get tableName => 'notas';

  @override
  NotasRow createRow(Map<String, dynamic> data) => NotasRow(data);
}

class NotasRow extends SupabaseDataRow {
  NotasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get solicitacao => getField<int>('solicitacao');
  set solicitacao(int? value) => setField<int>('solicitacao', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get nomeAutor => getField<String>('nome_autor');
  set nomeAutor(String? value) => setField<String>('nome_autor', value);

  String? get autor => getField<String>('autor');
  set autor(String? value) => setField<String>('autor', value);
}
