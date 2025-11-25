import '../database.dart';

class VwCidadaosMapaTable extends SupabaseTable<VwCidadaosMapaRow> {
  @override
  String get tableName => 'vw_cidadaos_mapa';

  @override
  VwCidadaosMapaRow createRow(Map<String, dynamic> data) =>
      VwCidadaosMapaRow(data);
}

class VwCidadaosMapaRow extends SupabaseDataRow {
  VwCidadaosMapaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwCidadaosMapaTable();

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get localizacao => getField<String>('localizacao');
  set localizacao(String? value) => setField<String>('localizacao', value);

  double? get latitudeG => getField<double>('latitude_g');
  set latitudeG(double? value) => setField<double>('latitude_g', value);

  double? get longitudeG => getField<double>('longitude_g');
  set longitudeG(double? value) => setField<double>('longitude_g', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);
}
