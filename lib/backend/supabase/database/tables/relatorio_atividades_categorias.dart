import '../database.dart';

class RelatorioAtividadesCategoriasTable
    extends SupabaseTable<RelatorioAtividadesCategoriasRow> {
  @override
  String get tableName => 'relatorio_atividades_categorias';

  @override
  RelatorioAtividadesCategoriasRow createRow(Map<String, dynamic> data) =>
      RelatorioAtividadesCategoriasRow(data);
}

class RelatorioAtividadesCategoriasRow extends SupabaseDataRow {
  RelatorioAtividadesCategoriasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RelatorioAtividadesCategoriasTable();

  int? get somaAtividadesCategoria =>
      getField<int>('soma_atividades_categoria');
  set somaAtividadesCategoria(int? value) =>
      setField<int>('soma_atividades_categoria', value);

  int? get somaSolicitacoesCategoria =>
      getField<int>('soma_solicitacoes_categoria');
  set somaSolicitacoesCategoria(int? value) =>
      setField<int>('soma_solicitacoes_categoria', value);

  int? get cidadaosAtendidos => getField<int>('cidadaos_atendidos');
  set cidadaosAtendidos(int? value) =>
      setField<int>('cidadaos_atendidos', value);

  int? get solicitacoesFinalizadas => getField<int>('solicitacoes_finalizadas');
  set solicitacoesFinalizadas(int? value) =>
      setField<int>('solicitacoes_finalizadas', value);

  DateTime? get ultimaAtividade => getField<DateTime>('ultima_atividade');
  set ultimaAtividade(DateTime? value) =>
      setField<DateTime>('ultima_atividade', value);

  int? get vezesUtilizada => getField<int>('vezes_utilizada');
  set vezesUtilizada(int? value) => setField<int>('vezes_utilizada', value);

  DateTime? get ultimaUtilizacao => getField<DateTime>('ultima_utilizacao');
  set ultimaUtilizacao(DateTime? value) =>
      setField<DateTime>('ultima_utilizacao', value);

  int? get totalAtividadesAtivas => getField<int>('total_atividades_ativas');
  set totalAtividadesAtivas(int? value) =>
      setField<int>('total_atividades_ativas', value);

  int? get totalAtividadesInativas =>
      getField<int>('total_atividades_inativas');
  set totalAtividadesInativas(int? value) =>
      setField<int>('total_atividades_inativas', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get categoriaId => getField<String>('categoria_id');
  set categoriaId(String? value) => setField<String>('categoria_id', value);

  String? get atividadeId => getField<String>('atividade_id');
  set atividadeId(String? value) => setField<String>('atividade_id', value);
}
