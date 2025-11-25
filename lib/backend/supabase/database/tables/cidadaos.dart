import '../database.dart';

class CidadaosTable extends SupabaseTable<CidadaosRow> {
  @override
  String get tableName => 'cidadaos';

  @override
  CidadaosRow createRow(Map<String, dynamic> data) => CidadaosRow(data);
}

class CidadaosRow extends SupabaseDataRow {
  CidadaosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CidadaosTable();

  String get cidadaoId => getField<String>('cidadao_id')!;
  set cidadaoId(String value) => setField<String>('cidadao_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  DateTime? get dtNascimento => getField<DateTime>('dt_nascimento');
  set dtNascimento(DateTime? value) =>
      setField<DateTime>('dt_nascimento', value);

  String? get logradouro => getField<String>('logradouro');
  set logradouro(String? value) => setField<String>('logradouro', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  int? get numero => getField<int>('numero');
  set numero(int? value) => setField<int>('numero', value);

  double? get latitudeG => getField<double>('latitude_g');
  set latitudeG(double? value) => setField<double>('latitude_g', value);

  double? get longitudeG => getField<double>('longitude_g');
  set longitudeG(double? value) => setField<double>('longitude_g', value);

  String? get categoriaId => getField<String>('categoria_id');
  set categoriaId(String? value) => setField<String>('categoria_id', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get statusId => getField<String>('status_id');
  set statusId(String? value) => setField<String>('status_id', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  bool? get contatoGrupo => getField<bool>('contato_grupo');
  set contatoGrupo(bool? value) => setField<bool>('contato_grupo', value);

  String? get resumoConversa => getField<String>('resumo_conversa');
  set resumoConversa(String? value) =>
      setField<String>('resumo_conversa', value);

  DateTime? get updateAt => getField<DateTime>('update_at');
  set updateAt(DateTime? value) => setField<DateTime>('update_at', value);

  String? get connectedPhone => getField<String>('connected_phone');
  set connectedPhone(String? value) =>
      setField<String>('connected_phone', value);

  String? get dataNascimentoS => getField<String>('data_nascimento_s');
  set dataNascimentoS(String? value) =>
      setField<String>('data_nascimento_s', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  bool? get conversaFinalizada => getField<bool>('conversa_finalizada');
  set conversaFinalizada(bool? value) =>
      setField<bool>('conversa_finalizada', value);

  bool? get conversaAtendida => getField<bool>('conversa_atendida');
  set conversaAtendida(bool? value) =>
      setField<bool>('conversa_atendida', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  int? get idade => getField<int>('idade');
  set idade(int? value) => setField<int>('idade', value);

  bool? get isGroup => getField<bool>('is_group');
  set isGroup(bool? value) => setField<bool>('is_group', value);

  String? get tagTipo => getField<String>('tag_tipo');
  set tagTipo(String? value) => setField<String>('tag_tipo', value);
}
