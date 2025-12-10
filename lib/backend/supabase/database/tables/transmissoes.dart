import '../database.dart';

class TransmissoesTable extends SupabaseTable<TransmissoesRow> {
  @override
  String get tableName => 'transmissoes';

  @override
  TransmissoesRow createRow(Map<String, dynamic> data) => TransmissoesRow(data);
}

class TransmissoesRow extends SupabaseDataRow {
  TransmissoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransmissoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get gabinete => getField<int>('gabinete');
  set gabinete(int? value) => setField<int>('gabinete', value);

  String? get idCampanha => getField<String>('id_campanha');
  set idCampanha(String? value) => setField<String>('id_campanha', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get mensagem => getField<String>('mensagem');
  set mensagem(String? value) => setField<String>('mensagem', value);

  String? get arquivo => getField<String>('arquivo');
  set arquivo(String? value) => setField<String>('arquivo', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get dataField => getField<String>('data');
  set dataField(String? value) => setField<String>('data', value);

  String? get hora => getField<String>('hora');
  set hora(String? value) => setField<String>('hora', value);

  int? get dataAgendamento => getField<int>('data_agendamento');
  set dataAgendamento(int? value) => setField<int>('data_agendamento', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  List<String> get perfil => getListField<String>('perfil');
  set perfil(List<String>? value) => setListField<String>('perfil', value);

  List<String> get categorias => getListField<String>('categorias');
  set categorias(List<String>? value) =>
      setListField<String>('categorias', value);

  List<String> get bairros => getListField<String>('bairros');
  set bairros(List<String>? value) => setListField<String>('bairros', value);
}
