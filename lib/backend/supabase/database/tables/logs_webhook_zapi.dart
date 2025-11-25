import '../database.dart';

class LogsWebhookZapiTable extends SupabaseTable<LogsWebhookZapiRow> {
  @override
  String get tableName => 'logs_webhook_zapi';

  @override
  LogsWebhookZapiRow createRow(Map<String, dynamic> data) =>
      LogsWebhookZapiRow(data);
}

class LogsWebhookZapiRow extends SupabaseDataRow {
  LogsWebhookZapiRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LogsWebhookZapiTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  dynamic? get payloadRecebido => getField<dynamic>('payload_recebido');
  set payloadRecebido(dynamic? value) =>
      setField<dynamic>('payload_recebido', value);

  dynamic? get respostaBuscaGabinete =>
      getField<dynamic>('resposta_busca_gabinete');
  set respostaBuscaGabinete(dynamic? value) =>
      setField<dynamic>('resposta_busca_gabinete', value);

  dynamic? get respostaBuscaCidadao =>
      getField<dynamic>('resposta_busca_cidadao');
  set respostaBuscaCidadao(dynamic? value) =>
      setField<dynamic>('resposta_busca_cidadao', value);

  dynamic? get respostaInsercaoCidadao =>
      getField<dynamic>('resposta_insercao_cidadao');
  set respostaInsercaoCidadao(dynamic? value) =>
      setField<dynamic>('resposta_insercao_cidadao', value);

  dynamic? get respostaInsercaoMensagem =>
      getField<dynamic>('resposta_insercao_mensagem');
  set respostaInsercaoMensagem(dynamic? value) =>
      setField<dynamic>('resposta_insercao_mensagem', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get zapiInstacia => getField<String>('zapi_instacia');
  set zapiInstacia(String? value) => setField<String>('zapi_instacia', value);

  String? get zapiToken => getField<String>('zapi_token');
  set zapiToken(String? value) => setField<String>('zapi_token', value);

  String? get passouAqui => getField<String>('passou_aqui');
  set passouAqui(String? value) => setField<String>('passou_aqui', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String? get detalhe => getField<String>('detalhe');
  set detalhe(String? value) => setField<String>('detalhe', value);

  String? get erro => getField<String>('erro');
  set erro(String? value) => setField<String>('erro', value);
}
