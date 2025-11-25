import '../database.dart';

class SolicitacoesTable extends SupabaseTable<SolicitacoesRow> {
  @override
  String get tableName => 'solicitacoes';

  @override
  SolicitacoesRow createRow(Map<String, dynamic> data) => SolicitacoesRow(data);
}

class SolicitacoesRow extends SupabaseDataRow {
  SolicitacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SolicitacoesTable();

  String get solidId => getField<String>('solid_id')!;
  set solidId(String value) => setField<String>('solid_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get dataCriacao => getField<DateTime>('data_criacao');
  set dataCriacao(DateTime? value) => setField<DateTime>('data_criacao', value);

  DateTime? get dataAlteracao => getField<DateTime>('data_alteracao');
  set dataAlteracao(DateTime? value) =>
      setField<DateTime>('data_alteracao', value);

  String? get responssavelUser => getField<String>('responssavel_user');
  set responssavelUser(String? value) =>
      setField<String>('responssavel_user', value);

  String? get categoriaId => getField<String>('categoria_id');
  set categoriaId(String? value) => setField<String>('categoria_id', value);

  int? get statusAtendimento => getField<int>('status_atendimento');
  set statusAtendimento(int? value) =>
      setField<int>('status_atendimento', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get resumoConversa => getField<String>('resumo_conversa');
  set resumoConversa(String? value) =>
      setField<String>('resumo_conversa', value);

  int? get tagPrioridade => getField<int>('tag_prioridade');
  set tagPrioridade(int? value) => setField<int>('tag_prioridade', value);

  String? get atividadeAtual => getField<String>('atividade_atual');
  set atividadeAtual(String? value) =>
      setField<String>('atividade_atual', value);

  DateTime? get dtInicialAtendimento =>
      getField<DateTime>('dt_inicial_atendimento');
  set dtInicialAtendimento(DateTime? value) =>
      setField<DateTime>('dt_inicial_atendimento', value);

  DateTime? get dtFimAtendimento => getField<DateTime>('dt_fim_atendimento');
  set dtFimAtendimento(DateTime? value) =>
      setField<DateTime>('dt_fim_atendimento', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get dataFimAtendimento => getField<String>('data_fim_atendimento');
  set dataFimAtendimento(String? value) =>
      setField<String>('data_fim_atendimento', value);

  String? get prioridade => getField<String>('prioridade');
  set prioridade(String? value) => setField<String>('prioridade', value);

  String? get dataInicioAtendimento =>
      getField<String>('data_inicio_atendimento');
  set dataInicioAtendimento(String? value) =>
      setField<String>('data_inicio_atendimento', value);

  String? get categoriaNome => getField<String>('categoria_nome');
  set categoriaNome(String? value) => setField<String>('categoria_nome', value);
}
