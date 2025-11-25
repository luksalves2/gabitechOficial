import '../database.dart';

class AniversariantesMesTable extends SupabaseTable<AniversariantesMesRow> {
  @override
  String get tableName => 'aniversariantes_mes';

  @override
  AniversariantesMesRow createRow(Map<String, dynamic> data) =>
      AniversariantesMesRow(data);
}

class AniversariantesMesRow extends SupabaseDataRow {
  AniversariantesMesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AniversariantesMesTable();

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get telefoneFormatado => getField<String>('telefone_formatado');
  set telefoneFormatado(String? value) =>
      setField<String>('telefone_formatado', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get dataNascimento => getField<String>('data_nascimento');
  set dataNascimento(String? value) =>
      setField<String>('data_nascimento', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);
}
