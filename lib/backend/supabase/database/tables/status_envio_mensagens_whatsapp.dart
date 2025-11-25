import '../database.dart';

class StatusEnvioMensagensWhatsappTable
    extends SupabaseTable<StatusEnvioMensagensWhatsappRow> {
  @override
  String get tableName => 'status_envio_mensagens_whatsapp';

  @override
  StatusEnvioMensagensWhatsappRow createRow(Map<String, dynamic> data) =>
      StatusEnvioMensagensWhatsappRow(data);
}

class StatusEnvioMensagensWhatsappRow extends SupabaseDataRow {
  StatusEnvioMensagensWhatsappRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StatusEnvioMensagensWhatsappTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get phone => getField<String>('phone')!;
  set phone(String value) => setField<String>('phone', value);

  String get zaapId => getField<String>('zaap_id')!;
  set zaapId(String value) => setField<String>('zaap_id', value);

  String get messageId => getField<String>('message_id')!;
  set messageId(String value) => setField<String>('message_id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get instanceId => getField<String>('instance_id');
  set instanceId(String? value) => setField<String>('instance_id', value);

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  DateTime? get receivedAt => getField<DateTime>('received_at');
  set receivedAt(DateTime? value) => setField<DateTime>('received_at', value);
}
