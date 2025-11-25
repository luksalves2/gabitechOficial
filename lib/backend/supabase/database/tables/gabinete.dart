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

  String get gabineteId => getField<String>('gabinete_id')!;
  set gabineteId(String value) => setField<String>('gabinete_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomePolitico => getField<String>('nome_politico');
  set nomePolitico(String? value) => setField<String>('nome_politico', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get zapiInstance => getField<String>('zapi_instance');
  set zapiInstance(String? value) => setField<String>('zapi_instance', value);

  String? get zapiToken => getField<String>('zapi_token');
  set zapiToken(String? value) => setField<String>('zapi_token', value);
}
