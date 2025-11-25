import '../database.dart';

class VAtendimentosListaTable extends SupabaseTable<VAtendimentosListaRow> {
  @override
  String get tableName => 'v_atendimentos_lista';

  @override
  VAtendimentosListaRow createRow(Map<String, dynamic> data) =>
      VAtendimentosListaRow(data);
}

class VAtendimentosListaRow extends SupabaseDataRow {
  VAtendimentosListaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VAtendimentosListaTable();

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  bool? get isGroup => getField<bool>('is_group');
  set isGroup(bool? value) => setField<bool>('is_group', value);

  DateTime? get ultimaMsgAt => getField<DateTime>('ultima_msg_at');
  set ultimaMsgAt(DateTime? value) =>
      setField<DateTime>('ultima_msg_at', value);

  String? get ultimaMsg => getField<String>('ultima_msg');
  set ultimaMsg(String? value) => setField<String>('ultima_msg', value);

  DateTime? get ultimaInboundAt => getField<DateTime>('ultima_inbound_at');
  set ultimaInboundAt(DateTime? value) =>
      setField<DateTime>('ultima_inbound_at', value);

  int? get naoLidas => getField<int>('nao_lidas');
  set naoLidas(int? value) => setField<int>('nao_lidas', value);

  String? get sla => getField<String>('sla');
  set sla(String? value) => setField<String>('sla', value);

  int? get solicitacoesAbertas => getField<int>('solicitacoes_abertas');
  set solicitacoesAbertas(int? value) =>
      setField<int>('solicitacoes_abertas', value);
}
