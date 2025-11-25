import '../database.dart';

class AniversariantesContagemMesTable
    extends SupabaseTable<AniversariantesContagemMesRow> {
  @override
  String get tableName => 'aniversariantes_contagem_mes';

  @override
  AniversariantesContagemMesRow createRow(Map<String, dynamic> data) =>
      AniversariantesContagemMesRow(data);
}

class AniversariantesContagemMesRow extends SupabaseDataRow {
  AniversariantesContagemMesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AniversariantesContagemMesTable();

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  int? get quantidade => getField<int>('quantidade');
  set quantidade(int? value) => setField<int>('quantidade', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);
}
