import '../database.dart';

class ChatsWhatsappTable extends SupabaseTable<ChatsWhatsappRow> {
  @override
  String get tableName => 'chats_whatsapp';

  @override
  ChatsWhatsappRow createRow(Map<String, dynamic> data) =>
      ChatsWhatsappRow(data);
}

class ChatsWhatsappRow extends SupabaseDataRow {
  ChatsWhatsappRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatsWhatsappTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get phone => getField<String>('phone')!;
  set phone(String value) => setField<String>('phone', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get isGroup => getField<bool>('is_group');
  set isGroup(bool? value) => setField<bool>('is_group', value);

  DateTime? get lastMessageTime => getField<DateTime>('last_message_time');
  set lastMessageTime(DateTime? value) =>
      setField<DateTime>('last_message_time', value);

  int? get unread => getField<int>('unread');
  set unread(int? value) => setField<int>('unread', value);

  bool? get isMuted => getField<bool>('is_muted');
  set isMuted(bool? value) => setField<bool>('is_muted', value);

  bool? get isMarkedSpam => getField<bool>('is_marked_spam');
  set isMarkedSpam(bool? value) => setField<bool>('is_marked_spam', value);

  String get gabineteId => getField<String>('gabinete_id')!;
  set gabineteId(String value) => setField<String>('gabinete_id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get lido => getField<String>('lido');
  set lido(String? value) => setField<String>('lido', value);

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  String? get about => getField<String>('about');
  set about(String? value) => setField<String>('about', value);

  DateTime? get createAt => getField<DateTime>('create_at');
  set createAt(DateTime? value) => setField<DateTime>('create_at', value);

  String? get ultimaMsg => getField<String>('ultima_msg');
  set ultimaMsg(String? value) => setField<String>('ultima_msg', value);

  bool? get conversaFinalizada => getField<bool>('conversa_finalizada');
  set conversaFinalizada(bool? value) =>
      setField<bool>('conversa_finalizada', value);
}
