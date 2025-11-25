import '../database.dart';

class AtividadesSolicitacoesTable
    extends SupabaseTable<AtividadesSolicitacoesRow> {
  @override
  String get tableName => 'atividades_solicitacoes';

  @override
  AtividadesSolicitacoesRow createRow(Map<String, dynamic> data) =>
      AtividadesSolicitacoesRow(data);
}

class AtividadesSolicitacoesRow extends SupabaseDataRow {
  AtividadesSolicitacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AtividadesSolicitacoesTable();

  String get atividadeId => getField<String>('atividade_id')!;
  set atividadeId(String value) => setField<String>('atividade_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  DateTime? get dataCriacao => getField<DateTime>('data_criacao');
  set dataCriacao(DateTime? value) => setField<DateTime>('data_criacao', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get statusAtendimento => getField<int>('status_atendimento');
  set statusAtendimento(int? value) =>
      setField<int>('status_atendimento', value);

  String? get resumoConversa => getField<String>('resumo_conversa');
  set resumoConversa(String? value) =>
      setField<String>('resumo_conversa', value);

  String? get categoriaId => getField<String>('categoria_id');
  set categoriaId(String? value) => setField<String>('categoria_id', value);

  String? get solidId => getField<String>('solid_id');
  set solidId(String? value) => setField<String>('solid_id', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get atvCategId => getField<String>('atv_categ_id');
  set atvCategId(String? value) => setField<String>('atv_categ_id', value);
}
