import '../database.dart';

class MensagensProgramadasTable extends SupabaseTable<MensagensProgramadasRow> {
  @override
  String get tableName => 'mensagens_programadas';

  @override
  MensagensProgramadasRow createRow(Map<String, dynamic> data) =>
      MensagensProgramadasRow(data);
}

class MensagensProgramadasRow extends SupabaseDataRow {
  MensagensProgramadasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MensagensProgramadasTable();

  int get programacaoId => getField<int>('programacao_id')!;
  set programacaoId(int value) => setField<int>('programacao_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  DateTime? get agendarEm => getField<DateTime>('agendar_em');
  set agendarEm(DateTime? value) => setField<DateTime>('agendar_em', value);

  String? get arquivoUrl => getField<String>('arquivo_url');
  set arquivoUrl(String? value) => setField<String>('arquivo_url', value);

  String? get tagTipo => getField<String>('tag_tipo');
  set tagTipo(String? value) => setField<String>('tag_tipo', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  String? get timer => getField<String>('timer');
  set timer(String? value) => setField<String>('timer', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get totalAlvos => getField<int>('total_alvos');
  set totalAlvos(int? value) => setField<int>('total_alvos', value);

  int? get enviadosOk => getField<int>('enviados_ok');
  set enviadosOk(int? value) => setField<int>('enviados_ok', value);

  int? get enviadosFail => getField<int>('enviados_fail');
  set enviadosFail(int? value) => setField<int>('enviados_fail', value);

  DateTime? get lastRunAt => getField<DateTime>('last_run_at');
  set lastRunAt(DateTime? value) => setField<DateTime>('last_run_at', value);
}
