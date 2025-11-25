import '../database.dart';

class AtvidadeCategoriaVinculoTable
    extends SupabaseTable<AtvidadeCategoriaVinculoRow> {
  @override
  String get tableName => 'atvidade_categoria_vinculo';

  @override
  AtvidadeCategoriaVinculoRow createRow(Map<String, dynamic> data) =>
      AtvidadeCategoriaVinculoRow(data);
}

class AtvidadeCategoriaVinculoRow extends SupabaseDataRow {
  AtvidadeCategoriaVinculoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AtvidadeCategoriaVinculoTable();

  String? get atividadeId => getField<String>('atividade_id');
  set atividadeId(String? value) => setField<String>('atividade_id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);
}
