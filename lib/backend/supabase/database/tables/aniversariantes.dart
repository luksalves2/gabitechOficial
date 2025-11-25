import '../database.dart';

class AniversariantesTable extends SupabaseTable<AniversariantesRow> {
  @override
  String get tableName => 'aniversariantes';

  @override
  AniversariantesRow createRow(Map<String, dynamic> data) =>
      AniversariantesRow(data);
}

class AniversariantesRow extends SupabaseDataRow {
  AniversariantesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AniversariantesTable();

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  String? get dataNascimento => getField<String>('data_nascimento');
  set dataNascimento(String? value) =>
      setField<String>('data_nascimento', value);
}
