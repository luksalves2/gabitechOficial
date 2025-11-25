import '../database.dart';

class DashboardGraficoSolicitacoesMesExpandedTable
    extends SupabaseTable<DashboardGraficoSolicitacoesMesExpandedRow> {
  @override
  String get tableName => 'dashboard_grafico_solicitacoes_mes_expanded';

  @override
  DashboardGraficoSolicitacoesMesExpandedRow createRow(
          Map<String, dynamic> data) =>
      DashboardGraficoSolicitacoesMesExpandedRow(data);
}

class DashboardGraficoSolicitacoesMesExpandedRow extends SupabaseDataRow {
  DashboardGraficoSolicitacoesMesExpandedRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => DashboardGraficoSolicitacoesMesExpandedTable();

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  int? get valor => getField<int>('valor');
  set valor(int? value) => setField<int>('valor', value);
}
