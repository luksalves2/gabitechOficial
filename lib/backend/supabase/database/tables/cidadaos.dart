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

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get gabinete => getField<int>('gabinete');
  set gabinete(int? value) => setField<int>('gabinete', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get dataNascimento => getField<String>('data_nascimento');
  set dataNascimento(String? value) =>
      setField<String>('data_nascimento', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get perfil => getField<String>('perfil');
  set perfil(String? value) => setField<String>('perfil', value);

  int? get acessor => getField<int>('acessor');
  set acessor(int? value) => setField<int>('acessor', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get rua => getField<String>('rua');
  set rua(String? value) => setField<String>('rua', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  String? get pontoReferencia => getField<String>('ponto_referencia');
  set pontoReferencia(String? value) =>
      setField<String>('ponto_referencia', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);
}
