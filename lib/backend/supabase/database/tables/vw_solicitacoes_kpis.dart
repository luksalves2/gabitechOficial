import '../database.dart';

class VwSolicitacoesKpisTable extends SupabaseTable<VwSolicitacoesKpisRow> {
  @override
  String get tableName => 'vw_solicitacoes_kpis';

  @override
  VwSolicitacoesKpisRow createRow(Map<String, dynamic> data) =>
      VwSolicitacoesKpisRow(data);
}

class VwSolicitacoesKpisRow extends SupabaseDataRow {
  VwSolicitacoesKpisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwSolicitacoesKpisTable();

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  int? get totalGeral => getField<int>('total_geral');
  set totalGeral(int? value) => setField<int>('total_geral', value);

  double? get tempoMedioResolucaoDias =>
      getField<double>('tempo_medio_resolucao_dias');
  set tempoMedioResolucaoDias(double? value) =>
      setField<double>('tempo_medio_resolucao_dias', value);

  int? get totalMesAtual => getField<int>('total_mes_atual');
  set totalMesAtual(int? value) => setField<int>('total_mes_atual', value);

  int? get totalEmAnalise => getField<int>('total_em_analise');
  set totalEmAnalise(int? value) => setField<int>('total_em_analise', value);

  int? get totalEmAndamento => getField<int>('total_em_andamento');
  set totalEmAndamento(int? value) =>
      setField<int>('total_em_andamento', value);

  int? get totalFinalizado => getField<int>('total_finalizado');
  set totalFinalizado(int? value) => setField<int>('total_finalizado', value);

  int? get totalEmAtraso => getField<int>('total_em_atraso');
  set totalEmAtraso(int? value) => setField<int>('total_em_atraso', value);

  int? get totalMesEmAnalise => getField<int>('total_mes_em_analise');
  set totalMesEmAnalise(int? value) =>
      setField<int>('total_mes_em_analise', value);

  int? get totalMesEmAndamento => getField<int>('total_mes_em_andamento');
  set totalMesEmAndamento(int? value) =>
      setField<int>('total_mes_em_andamento', value);

  int? get totalMesFinalizado => getField<int>('total_mes_finalizado');
  set totalMesFinalizado(int? value) =>
      setField<int>('total_mes_finalizado', value);

  int? get totalMesEmAtraso => getField<int>('total_mes_em_atraso');
  set totalMesEmAtraso(int? value) =>
      setField<int>('total_mes_em_atraso', value);

  int? get totalMesEmAtendimento => getField<int>('total_mes_em_atendimento');
  set totalMesEmAtendimento(int? value) =>
      setField<int>('total_mes_em_atendimento', value);
}
