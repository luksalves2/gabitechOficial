import '../database.dart';

class ChamadoTable extends SupabaseTable<ChamadoRow> {
  @override
  String get tableName => 'chamado';

  @override
  ChamadoRow createRow(Map<String, dynamic> data) => ChamadoRow(data);
}

class ChamadoRow extends SupabaseDataRow {
  ChamadoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChamadoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get usuario => getField<int>('usuario');
  set usuario(int? value) => setField<int>('usuario', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get desccricao => getField<String>('desccricao');
  set desccricao(String? value) => setField<String>('desccricao', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get arquivo => getField<String>('arquivo');
  set arquivo(String? value) => setField<String>('arquivo', value);

  int? get gabinete => getField<int>('gabinete');
  set gabinete(int? value) => setField<int>('gabinete', value);
}
