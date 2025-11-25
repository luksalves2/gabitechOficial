import '../database.dart';

class MensagensWhatsappTable extends SupabaseTable<MensagensWhatsappRow> {
  @override
  String get tableName => 'mensagens_whatsapp';

  @override
  MensagensWhatsappRow createRow(Map<String, dynamic> data) =>
      MensagensWhatsappRow(data);
}

class MensagensWhatsappRow extends SupabaseDataRow {
  MensagensWhatsappRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MensagensWhatsappTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  bool? get isStatusReply => getField<bool>('is_status_reply');
  set isStatusReply(bool? value) => setField<bool>('is_status_reply', value);

  String? get senderLid => getField<String>('sender_lid');
  set senderLid(String? value) => setField<String>('sender_lid', value);

  String? get connectedPhone => getField<String>('connected_phone');
  set connectedPhone(String? value) =>
      setField<String>('connected_phone', value);

  bool? get waitingMessage => getField<bool>('waiting_message');
  set waitingMessage(bool? value) => setField<bool>('waiting_message', value);

  bool? get isEdit => getField<bool>('is_edit');
  set isEdit(bool? value) => setField<bool>('is_edit', value);

  bool? get isGroup => getField<bool>('is_group');
  set isGroup(bool? value) => setField<bool>('is_group', value);

  bool? get isNewsletter => getField<bool>('is_newsletter');
  set isNewsletter(bool? value) => setField<bool>('is_newsletter', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  bool? get fromMe => getField<bool>('from_me');
  set fromMe(bool? value) => setField<bool>('from_me', value);

  String? get participantPhone => getField<String>('participant_phone');
  set participantPhone(String? value) =>
      setField<String>('participant_phone', value);

  String? get participantLid => getField<String>('participant_lid');
  set participantLid(String? value) =>
      setField<String>('participant_lid', value);

  String? get messageId => getField<String>('message_id');
  set messageId(String? value) => setField<String>('message_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get referenceMessageId => getField<String>('reference_message_id');
  set referenceMessageId(String? value) =>
      setField<String>('reference_message_id', value);

  int? get momment => getField<int>('momment');
  set momment(int? value) => setField<int>('momment', value);

  int? get messageExpirationSeconds =>
      getField<int>('message_expiration_seconds');
  set messageExpirationSeconds(int? value) =>
      setField<int>('message_expiration_seconds', value);

  String? get requestMethod => getField<String>('request_method');
  set requestMethod(String? value) => setField<String>('request_method', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get photo => getField<String>('photo');
  set photo(String? value) => setField<String>('photo', value);

  String? get textMessage => getField<String>('text_message');
  set textMessage(String? value) => setField<String>('text_message', value);

  String? get imageCaption => getField<String>('image_caption');
  set imageCaption(String? value) => setField<String>('image_caption', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get imageThumbnailUrl => getField<String>('image_thumbnail_url');
  set imageThumbnailUrl(String? value) =>
      setField<String>('image_thumbnail_url', value);

  String? get imageMimeType => getField<String>('image_mime_type');
  set imageMimeType(String? value) =>
      setField<String>('image_mime_type', value);

  String? get audioMimeType => getField<String>('audio_mime_type');
  set audioMimeType(String? value) =>
      setField<String>('audio_mime_type', value);

  String? get audioUrl => getField<String>('audio_url');
  set audioUrl(String? value) => setField<String>('audio_url', value);

  String? get videoCaption => getField<String>('video_caption');
  set videoCaption(String? value) => setField<String>('video_caption', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);

  String? get videoMimeType => getField<String>('video_mime_type');
  set videoMimeType(String? value) =>
      setField<String>('video_mime_type', value);

  String? get contactDisplayName => getField<String>('contact_display_name');
  set contactDisplayName(String? value) =>
      setField<String>('contact_display_name', value);

  String? get contactVcard => getField<String>('contact_vcard');
  set contactVcard(String? value) => setField<String>('contact_vcard', value);

  String? get documentMimeType => getField<String>('document_mime_type');
  set documentMimeType(String? value) =>
      setField<String>('document_mime_type', value);

  String? get documentFileName => getField<String>('document_file_name');
  set documentFileName(String? value) =>
      setField<String>('document_file_name', value);

  String? get documentTitle => getField<String>('document_title');
  set documentTitle(String? value) => setField<String>('document_title', value);

  int? get documentPageCount => getField<int>('document_page_count');
  set documentPageCount(int? value) =>
      setField<int>('document_page_count', value);

  String? get documentThumbnailUrl =>
      getField<String>('document_thumbnail_url');
  set documentThumbnailUrl(String? value) =>
      setField<String>('document_thumbnail_url', value);

  String? get documentUrl => getField<String>('document_url');
  set documentUrl(String? value) => setField<String>('document_url', value);

  String? get locationThumbnailUrl =>
      getField<String>('location_thumbnail_url');
  set locationThumbnailUrl(String? value) =>
      setField<String>('location_thumbnail_url', value);

  double? get locationLongitude => getField<double>('location_longitude');
  set locationLongitude(double? value) =>
      setField<double>('location_longitude', value);

  double? get locationLatitude => getField<double>('location_latitude');
  set locationLatitude(double? value) =>
      setField<double>('location_latitude', value);

  String? get locationUrl => getField<String>('location_url');
  set locationUrl(String? value) => setField<String>('location_url', value);

  String? get locationName => getField<String>('location_name');
  set locationName(String? value) => setField<String>('location_name', value);

  String? get locationAddress => getField<String>('location_address');
  set locationAddress(String? value) =>
      setField<String>('location_address', value);

  String? get stickerMimeType => getField<String>('sticker_mime_type');
  set stickerMimeType(String? value) =>
      setField<String>('sticker_mime_type', value);

  String? get stickerUrl => getField<String>('sticker_url');
  set stickerUrl(String? value) => setField<String>('sticker_url', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  String? get direction => getField<String>('direction');
  set direction(String? value) => setField<String>('direction', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get lido => getField<String>('lido');
  set lido(String? value) => setField<String>('lido', value);

  String? get senderName => getField<String>('sender_name');
  set senderName(String? value) => setField<String>('sender_name', value);

  String? get chatName => getField<String>('chat_name');
  set chatName(String? value) => setField<String>('chat_name', value);

  bool? get ignorar => getField<bool>('ignorar');
  set ignorar(bool? value) => setField<bool>('ignorar', value);

  String? get msgRespostaText => getField<String>('msg_resposta_text');
  set msgRespostaText(String? value) =>
      setField<String>('msg_resposta_text', value);

  String? get msgRespostaImageUrl => getField<String>('msg_resposta_image_url');
  set msgRespostaImageUrl(String? value) =>
      setField<String>('msg_resposta_image_url', value);

  String? get msgRespostaVideoUrl => getField<String>('msg_resposta_video_url');
  set msgRespostaVideoUrl(String? value) =>
      setField<String>('msg_resposta_video_url', value);

  String? get msgRespostaAudioUrl => getField<String>('msg_resposta_audio_url');
  set msgRespostaAudioUrl(String? value) =>
      setField<String>('msg_resposta_audio_url', value);

  String? get msgRespostaDocumentUrl =>
      getField<String>('msg_resposta_document_url');
  set msgRespostaDocumentUrl(String? value) =>
      setField<String>('msg_resposta_document_url', value);

  String? get programacaoId => getField<String>('programacao_id');
  set programacaoId(String? value) => setField<String>('programacao_id', value);
}
