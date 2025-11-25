import '../database.dart';

class VwDemografiaCidadaosPivotComTotaisTable
    extends SupabaseTable<VwDemografiaCidadaosPivotComTotaisRow> {
  @override
  String get tableName => 'vw_demografia_cidadaos_pivot_com_totais';

  @override
  VwDemografiaCidadaosPivotComTotaisRow createRow(Map<String, dynamic> data) =>
      VwDemografiaCidadaosPivotComTotaisRow(data);
}

class VwDemografiaCidadaosPivotComTotaisRow extends SupabaseDataRow {
  VwDemografiaCidadaosPivotComTotaisRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => VwDemografiaCidadaosPivotComTotaisTable();

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get faixaEtaria => getField<String>('faixa_etaria');
  set faixaEtaria(String? value) => setField<String>('faixa_etaria', value);

  int? get masculino => getField<int>('masculino');
  set masculino(int? value) => setField<int>('masculino', value);

  int? get feminino => getField<int>('feminino');
  set feminino(int? value) => setField<int>('feminino', value);

  int? get outro => getField<int>('outro');
  set outro(int? value) => setField<int>('outro', value);

  int? get totalMasculino => getField<int>('total_masculino');
  set totalMasculino(int? value) => setField<int>('total_masculino', value);

  int? get totalFeminino => getField<int>('total_feminino');
  set totalFeminino(int? value) => setField<int>('total_feminino', value);

  int? get totalOutro => getField<int>('total_outro');
  set totalOutro(int? value) => setField<int>('total_outro', value);
}
