import '../database.dart';

class AtendimentosTable extends SupabaseTable<AtendimentosRow> {
  @override
  String get tableName => 'atendimentos';

  @override
  AtendimentosRow createRow(Map<String, dynamic> data) => AtendimentosRow(data);
}

class AtendimentosRow extends SupabaseDataRow {
  AtendimentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AtendimentosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get gabinete => getField<int>('gabinete');
  set gabinete(int? value) => setField<int>('gabinete', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get cidadao => getField<int>('cidadao');
  set cidadao(int? value) => setField<int>('cidadao', value);

  bool? get autorizado => getField<bool>('autorizado');
  set autorizado(bool? value) => setField<bool>('autorizado', value);
}
