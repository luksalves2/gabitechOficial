import '../database.dart';

class DashboardNumerosContadosListaTable
    extends SupabaseTable<DashboardNumerosContadosListaRow> {
  @override
  String get tableName => 'dashboard_numeros_contados_lista';

  @override
  DashboardNumerosContadosListaRow createRow(Map<String, dynamic> data) =>
      DashboardNumerosContadosListaRow(data);
}

class DashboardNumerosContadosListaRow extends SupabaseDataRow {
  DashboardNumerosContadosListaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DashboardNumerosContadosListaTable();

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get valor => getField<int>('valor');
  set valor(int? value) => setField<int>('valor', value);
}
