import '../database.dart';

class SolicitacoesCidadoesAnaliseTable
    extends SupabaseTable<SolicitacoesCidadoesAnaliseRow> {
  @override
  String get tableName => 'solicitacoes_cidadoes_analise';

  @override
  SolicitacoesCidadoesAnaliseRow createRow(Map<String, dynamic> data) =>
      SolicitacoesCidadoesAnaliseRow(data);
}

class SolicitacoesCidadoesAnaliseRow extends SupabaseDataRow {
  SolicitacoesCidadoesAnaliseRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SolicitacoesCidadoesAnaliseTable();

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get responssavelUser => getField<String>('responssavel_user');
  set responssavelUser(String? value) =>
      setField<String>('responssavel_user', value);

  String? get statusAtendimentoTexto =>
      getField<String>('status_atendimento_texto');
  set statusAtendimentoTexto(String? value) =>
      setField<String>('status_atendimento_texto', value);

  String? get prioridadeTexto => getField<String>('prioridade_texto');
  set prioridadeTexto(String? value) =>
      setField<String>('prioridade_texto', value);

  String? get dataFimAtendimento => getField<String>('data_fim_atendimento');
  set dataFimAtendimento(String? value) =>
      setField<String>('data_fim_atendimento', value);

  String? get dataInicialAtendimento =>
      getField<String>('data_inicial_atendimento');
  set dataInicialAtendimento(String? value) =>
      setField<String>('data_inicial_atendimento', value);

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get categoriaId => getField<String>('categoria_id');
  set categoriaId(String? value) => setField<String>('categoria_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get statusAtendimento => getField<int>('status_atendimento');
  set statusAtendimento(int? value) =>
      setField<int>('status_atendimento', value);

  int? get tagPrioridade => getField<int>('tag_prioridade');
  set tagPrioridade(int? value) => setField<int>('tag_prioridade', value);
}
