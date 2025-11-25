import '../database.dart';

class CidadoesRuasTable extends SupabaseTable<CidadoesRuasRow> {
  @override
  String get tableName => 'cidadoes_ruas';

  @override
  CidadoesRuasRow createRow(Map<String, dynamic> data) => CidadoesRuasRow(data);
}

class CidadoesRuasRow extends SupabaseDataRow {
  CidadoesRuasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CidadoesRuasTable();

  String? get logradouro => getField<String>('logradouro');
  set logradouro(String? value) => setField<String>('logradouro', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);
}
