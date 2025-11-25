import '../database.dart';

class ContagemCidadaoUnpackedVTable
    extends SupabaseTable<ContagemCidadaoUnpackedVRow> {
  @override
  String get tableName => 'contagem_cidadao_unpacked_v';

  @override
  ContagemCidadaoUnpackedVRow createRow(Map<String, dynamic> data) =>
      ContagemCidadaoUnpackedVRow(data);
}

class ContagemCidadaoUnpackedVRow extends SupabaseDataRow {
  ContagemCidadaoUnpackedVRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContagemCidadaoUnpackedVTable();

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get label => getField<String>('label');
  set label(String? value) => setField<String>('label', value);

  int? get quantidade => getField<int>('quantidade');
  set quantidade(int? value) => setField<int>('quantidade', value);

  double? get percentual => getField<double>('percentual');
  set percentual(double? value) => setField<double>('percentual', value);
}
