import '../database.dart';

class CategoriasSolicitacoesTable
    extends SupabaseTable<CategoriasSolicitacoesRow> {
  @override
  String get tableName => 'categorias_solicitacoes';

  @override
  CategoriasSolicitacoesRow createRow(Map<String, dynamic> data) =>
      CategoriasSolicitacoesRow(data);
}

class CategoriasSolicitacoesRow extends SupabaseDataRow {
  CategoriasSolicitacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriasSolicitacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
