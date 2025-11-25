import '../database.dart';

class SolicitacoesDetalhesTable extends SupabaseTable<SolicitacoesDetalhesRow> {
  @override
  String get tableName => 'solicitacoes_detalhes';

  @override
  SolicitacoesDetalhesRow createRow(Map<String, dynamic> data) =>
      SolicitacoesDetalhesRow(data);
}

class SolicitacoesDetalhesRow extends SupabaseDataRow {
  SolicitacoesDetalhesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SolicitacoesDetalhesTable();

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

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

  String? get dataInicioAtendimento =>
      getField<String>('data_inicio_atendimento');
  set dataInicioAtendimento(String? value) =>
      setField<String>('data_inicio_atendimento', value);

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get categoriaId => getField<String>('categoria_id');
  set categoriaId(String? value) => setField<String>('categoria_id', value);

  String? get emailResponsavel => getField<String>('email_responsavel');
  set emailResponsavel(String? value) =>
      setField<String>('email_responsavel', value);

  int? get statusAtendimento => getField<int>('status_atendimento');
  set statusAtendimento(int? value) =>
      setField<int>('status_atendimento', value);

  int? get tagPrioridade => getField<int>('tag_prioridade');
  set tagPrioridade(int? value) => setField<int>('tag_prioridade', value);

  String? get solidId => getField<String>('solid_id');
  set solidId(String? value) => setField<String>('solid_id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get resumoConversa => getField<String>('resumo_conversa');
  set resumoConversa(String? value) =>
      setField<String>('resumo_conversa', value);

  String? get prioridade => getField<String>('prioridade');
  set prioridade(String? value) => setField<String>('prioridade', value);

  String? get categoriaNome => getField<String>('categoria_nome');
  set categoriaNome(String? value) => setField<String>('categoria_nome', value);
}
