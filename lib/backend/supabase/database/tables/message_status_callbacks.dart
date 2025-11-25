import '../database.dart';

class MessageStatusCallbacksTable
    extends SupabaseTable<MessageStatusCallbacksRow> {
  @override
  String get tableName => 'message_status_callbacks';

  @override
  MessageStatusCallbacksRow createRow(Map<String, dynamic> data) =>
      MessageStatusCallbacksRow(data);
}

class MessageStatusCallbacksRow extends SupabaseDataRow {
  MessageStatusCallbacksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MessageStatusCallbacksTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get instanceId => getField<String>('instance_id')!;
  set instanceId(String value) => setField<String>('instance_id', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  List<String> get ids => getListField<String>('ids')!;
  set ids(List<String> value) => setListField<String>('ids', value);

  DateTime get momment => getField<DateTime>('momment')!;
  set momment(DateTime value) => setField<DateTime>('momment', value);

  int get phoneDevice => getField<int>('phone_device')!;
  set phoneDevice(int value) => setField<int>('phone_device', value);

  String get phone => getField<String>('phone')!;
  set phone(String value) => setField<String>('phone', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  bool get isGroup => getField<bool>('is_group')!;
  set isGroup(bool value) => setField<bool>('is_group', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  DateTime? get gabineteId => getField<DateTime>('gabinete_id');
  set gabineteId(DateTime? value) => setField<DateTime>('gabinete_id', value);
}
