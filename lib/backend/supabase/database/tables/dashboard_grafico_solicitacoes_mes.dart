import '../database.dart';

class DashboardGraficoSolicitacoesMesTable
    extends SupabaseTable<DashboardGraficoSolicitacoesMesRow> {
  @override
  String get tableName => 'dashboard_grafico_solicitacoes_mes';

  @override
  DashboardGraficoSolicitacoesMesRow createRow(Map<String, dynamic> data) =>
      DashboardGraficoSolicitacoesMesRow(data);
}

class DashboardGraficoSolicitacoesMesRow extends SupabaseDataRow {
  DashboardGraficoSolicitacoesMesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DashboardGraficoSolicitacoesMesTable();

  List<String> get categorias => getListField<String>('categorias');
  set categorias(List<String>? value) =>
      setListField<String>('categorias', value);

  List<int> get valores => getListField<int>('valores');
  set valores(List<int>? value) => setListField<int>('valores', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);
}
