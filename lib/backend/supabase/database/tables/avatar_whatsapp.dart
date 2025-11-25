import '../database.dart';

class AvatarWhatsappTable extends SupabaseTable<AvatarWhatsappRow> {
  @override
  String get tableName => 'avatar_whatsapp';

  @override
  AvatarWhatsappRow createRow(Map<String, dynamic> data) =>
      AvatarWhatsappRow(data);
}

class AvatarWhatsappRow extends SupabaseDataRow {
  AvatarWhatsappRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AvatarWhatsappTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get phone => getField<String>('phone')!;
  set phone(String value) => setField<String>('phone', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get isGroup => getField<bool>('is_group');
  set isGroup(bool? value) => setField<bool>('is_group', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String get gabineteId => getField<String>('gabinete_id')!;
  set gabineteId(String value) => setField<String>('gabinete_id', value);

  String get cidadaoId => getField<String>('cidadao_id')!;
  set cidadaoId(String value) => setField<String>('cidadao_id', value);

  String get avatarId => getField<String>('avatar_id')!;
  set avatarId(String value) => setField<String>('avatar_id', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
