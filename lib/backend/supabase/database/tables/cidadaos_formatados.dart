import '../database.dart';

class CidadaosFormatadosTable extends SupabaseTable<CidadaosFormatadosRow> {
  @override
  String get tableName => 'cidadaos_formatados';

  @override
  CidadaosFormatadosRow createRow(Map<String, dynamic> data) =>
      CidadaosFormatadosRow(data);
}

class CidadaosFormatadosRow extends SupabaseDataRow {
  CidadaosFormatadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CidadaosFormatadosTable();

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get telefoneFormatado => getField<String>('telefone_formatado');
  set telefoneFormatado(String? value) =>
      setField<String>('telefone_formatado', value);
}
