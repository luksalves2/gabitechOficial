import '../database.dart';

class ResumoGabineteCategoriasAtividadesAtivasTable
    extends SupabaseTable<ResumoGabineteCategoriasAtividadesAtivasRow> {
  @override
  String get tableName => 'resumo_gabinete_categorias_atividades_ativas';

  @override
  ResumoGabineteCategoriasAtividadesAtivasRow createRow(
          Map<String, dynamic> data) =>
      ResumoGabineteCategoriasAtividadesAtivasRow(data);
}

class ResumoGabineteCategoriasAtividadesAtivasRow extends SupabaseDataRow {
  ResumoGabineteCategoriasAtividadesAtivasRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => ResumoGabineteCategoriasAtividadesAtivasTable();

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  int? get totalCategorias => getField<int>('total_categorias');
  set totalCategorias(int? value) => setField<int>('total_categorias', value);

  int? get totalAtividadesAtivas => getField<int>('total_atividades_ativas');
  set totalAtividadesAtivas(int? value) =>
      setField<int>('total_atividades_ativas', value);
}
