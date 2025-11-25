import '../database.dart';

class DashboardNumerosContadosTable
    extends SupabaseTable<DashboardNumerosContadosRow> {
  @override
  String get tableName => 'dashboard_numeros_contados';

  @override
  DashboardNumerosContadosRow createRow(Map<String, dynamic> data) =>
      DashboardNumerosContadosRow(data);
}

class DashboardNumerosContadosRow extends SupabaseDataRow {
  DashboardNumerosContadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DashboardNumerosContadosTable();

  int? get novasSolicitacoes => getField<int>('novas_solicitacoes');
  set novasSolicitacoes(int? value) =>
      setField<int>('novas_solicitacoes', value);

  int? get emAndamento => getField<int>('em_andamento');
  set emAndamento(int? value) => setField<int>('em_andamento', value);

  int? get concluidos => getField<int>('concluidos');
  set concluidos(int? value) => setField<int>('concluidos', value);

  int? get emAtraso => getField<int>('em_atraso');
  set emAtraso(int? value) => setField<int>('em_atraso', value);

  int? get solicitacoesMesAtual => getField<int>('solicitacoes_mes_atual');
  set solicitacoesMesAtual(int? value) =>
      setField<int>('solicitacoes_mes_atual', value);

  int? get totalCidadaos => getField<int>('total_cidadaos');
  set totalCidadaos(int? value) => setField<int>('total_cidadaos', value);

  int? get solicitacoesSemanaAtual =>
      getField<int>('solicitacoes_semana_atual');
  set solicitacoesSemanaAtual(int? value) =>
      setField<int>('solicitacoes_semana_atual', value);

  int? get solicitacoesIniciadasSemana =>
      getField<int>('solicitacoes_iniciadas_semana');
  set solicitacoesIniciadasSemana(int? value) =>
      setField<int>('solicitacoes_iniciadas_semana', value);

  int? get solicitacoesEmAndamentoSemana =>
      getField<int>('solicitacoes_em_andamento_semana');
  set solicitacoesEmAndamentoSemana(int? value) =>
      setField<int>('solicitacoes_em_andamento_semana', value);

  int? get solicitacoesFinalizadasSemana =>
      getField<int>('solicitacoes_finalizadas_semana');
  set solicitacoesFinalizadasSemana(int? value) =>
      setField<int>('solicitacoes_finalizadas_semana', value);
}
