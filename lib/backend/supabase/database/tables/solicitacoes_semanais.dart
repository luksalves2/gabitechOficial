import '../database.dart';

class SolicitacoesSemanaisTable extends SupabaseTable<SolicitacoesSemanaisRow> {
  @override
  String get tableName => 'solicitacoes_semanais';

  @override
  SolicitacoesSemanaisRow createRow(Map<String, dynamic> data) =>
      SolicitacoesSemanaisRow(data);
}

class SolicitacoesSemanaisRow extends SupabaseDataRow {
  SolicitacoesSemanaisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SolicitacoesSemanaisTable();

  String? get responssavelUser => getField<String>('responssavel_user');
  set responssavelUser(String? value) =>
      setField<String>('responssavel_user', value);

  String? get statusSolicitacao => getField<String>('status_solicitacao');
  set statusSolicitacao(String? value) =>
      setField<String>('status_solicitacao', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  DateTime? get dtFimAtendimento => getField<DateTime>('dt_fim_atendimento');
  set dtFimAtendimento(DateTime? value) =>
      setField<DateTime>('dt_fim_atendimento', value);

  String? get statusPrioridade => getField<String>('status_prioridade');
  set statusPrioridade(String? value) =>
      setField<String>('status_prioridade', value);

  String? get solidId => getField<String>('solid_id');
  set solidId(String? value) => setField<String>('solid_id', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);
}
