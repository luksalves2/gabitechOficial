import '../database.dart';

class VwCidadaosBairrosTable extends SupabaseTable<VwCidadaosBairrosRow> {
  @override
  String get tableName => 'vw_cidadaos_bairros';

  @override
  VwCidadaosBairrosRow createRow(Map<String, dynamic> data) =>
      VwCidadaosBairrosRow(data);
}

class VwCidadaosBairrosRow extends SupabaseDataRow {
  VwCidadaosBairrosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwCidadaosBairrosTable();

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);
}
