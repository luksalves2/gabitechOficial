import '../database.dart';

class CidadoesBairroTable extends SupabaseTable<CidadoesBairroRow> {
  @override
  String get tableName => 'cidadoes_bairro';

  @override
  CidadoesBairroRow createRow(Map<String, dynamic> data) =>
      CidadoesBairroRow(data);
}

class CidadoesBairroRow extends SupabaseDataRow {
  CidadoesBairroRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CidadoesBairroTable();

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);
}
