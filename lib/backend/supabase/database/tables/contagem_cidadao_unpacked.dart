import '../database.dart';

class ContagemCidadaoUnpackedTable
    extends SupabaseTable<ContagemCidadaoUnpackedRow> {
  @override
  String get tableName => 'contagem_cidadao_unpacked';

  @override
  ContagemCidadaoUnpackedRow createRow(Map<String, dynamic> data) =>
      ContagemCidadaoUnpackedRow(data);
}

class ContagemCidadaoUnpackedRow extends SupabaseDataRow {
  ContagemCidadaoUnpackedRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContagemCidadaoUnpackedTable();

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get label => getField<String>('label');
  set label(String? value) => setField<String>('label', value);

  int? get quantidade => getField<int>('quantidade');
  set quantidade(int? value) => setField<int>('quantidade', value);
}
