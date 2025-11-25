import '../database.dart';

class ContagemCidadaoBairroCategoriaTable
    extends SupabaseTable<ContagemCidadaoBairroCategoriaRow> {
  @override
  String get tableName => 'contagem_cidadao_bairro_categoria';

  @override
  ContagemCidadaoBairroCategoriaRow createRow(Map<String, dynamic> data) =>
      ContagemCidadaoBairroCategoriaRow(data);
}

class ContagemCidadaoBairroCategoriaRow extends SupabaseDataRow {
  ContagemCidadaoBairroCategoriaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContagemCidadaoBairroCategoriaTable();

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get categoriaId => getField<String>('categoria_id');
  set categoriaId(String? value) => setField<String>('categoria_id', value);

  int? get qtd => getField<int>('qtd');
  set qtd(int? value) => setField<int>('qtd', value);
}
