import '../database.dart';

class VCidadaosBaseTable extends SupabaseTable<VCidadaosBaseRow> {
  @override
  String get tableName => 'v_cidadaos_base';

  @override
  VCidadaosBaseRow createRow(Map<String, dynamic> data) =>
      VCidadaosBaseRow(data);
}

class VCidadaosBaseRow extends SupabaseDataRow {
  VCidadaosBaseRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VCidadaosBaseTable();

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  DateTime? get nascimento => getField<DateTime>('nascimento');
  set nascimento(DateTime? value) => setField<DateTime>('nascimento', value);

  DateTime? get ultimoContato => getField<DateTime>('ultimo_contato');
  set ultimoContato(DateTime? value) =>
      setField<DateTime>('ultimo_contato', value);

  bool? get isGroup => getField<bool>('is_group');
  set isGroup(bool? value) => setField<bool>('is_group', value);

  bool? get isPessoa => getField<bool>('is_pessoa');
  set isPessoa(bool? value) => setField<bool>('is_pessoa', value);

  bool? get preCadastrado => getField<bool>('pre_cadastrado');
  set preCadastrado(bool? value) => setField<bool>('pre_cadastrado', value);
}
