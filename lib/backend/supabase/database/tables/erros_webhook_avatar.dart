import '../database.dart';

class ErrosWebhookAvatarTable extends SupabaseTable<ErrosWebhookAvatarRow> {
  @override
  String get tableName => 'erros_webhook_avatar';

  @override
  ErrosWebhookAvatarRow createRow(Map<String, dynamic> data) =>
      ErrosWebhookAvatarRow(data);
}

class ErrosWebhookAvatarRow extends SupabaseDataRow {
  ErrosWebhookAvatarRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ErrosWebhookAvatarTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get erro => getField<String>('erro');
  set erro(String? value) => setField<String>('erro', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  int? get tentativas => getField<int>('tentativas');
  set tentativas(int? value) => setField<int>('tentativas', value);

  bool? get resolvido => getField<bool>('resolvido');
  set resolvido(bool? value) => setField<bool>('resolvido', value);
}
