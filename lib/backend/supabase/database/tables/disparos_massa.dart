import '../database.dart';

class DisparosMassaTable extends SupabaseTable<DisparosMassaRow> {
  @override
  String get tableName => 'disparos_massa';

  @override
  DisparosMassaRow createRow(Map<String, dynamic> data) =>
      DisparosMassaRow(data);
}

class DisparosMassaRow extends SupabaseDataRow {
  DisparosMassaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DisparosMassaTable();

  String get cidadaoId => getField<String>('cidadao_id')!;
  set cidadaoId(String value) => setField<String>('cidadao_id', value);

  String get mensagem => getField<String>('mensagem')!;
  set mensagem(String value) => setField<String>('mensagem', value);

  List<String> get numeros => getListField<String>('numeros')!;
  set numeros(List<String> value) => setListField<String>('numeros', value);

  String? get urlDocumento => getField<String>('url_documento');
  set urlDocumento(String? value) => setField<String>('url_documento', value);

  String? get urlAudio => getField<String>('url_audio');
  set urlAudio(String? value) => setField<String>('url_audio', value);

  String? get urlVideo => getField<String>('url_video');
  set urlVideo(String? value) => setField<String>('url_video', value);

  String? get urlImagem => getField<String>('url_imagem');
  set urlImagem(String? value) => setField<String>('url_imagem', value);

  DateTime? get dataEnvio => getField<DateTime>('data_envio');
  set dataEnvio(DateTime? value) => setField<DateTime>('data_envio', value);

  String? get criadoPor => getField<String>('criado_por');
  set criadoPor(String? value) => setField<String>('criado_por', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);
}
