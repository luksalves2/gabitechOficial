import '../database.dart';

class AtividadeCategoriaVinculoTable
    extends SupabaseTable<AtividadeCategoriaVinculoRow> {
  @override
  String get tableName => 'atividade_categoria_vinculo';

  @override
  AtividadeCategoriaVinculoRow createRow(Map<String, dynamic> data) =>
      AtividadeCategoriaVinculoRow(data);
}

class AtividadeCategoriaVinculoRow extends SupabaseDataRow {
  AtividadeCategoriaVinculoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AtividadeCategoriaVinculoTable();

  String? get atividadeId => getField<String>('atividade_id');
  set atividadeId(String? value) => setField<String>('atividade_id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get categoriaId => getField<String>('categoria_id');
  set categoriaId(String? value) => setField<String>('categoria_id', value);
}
