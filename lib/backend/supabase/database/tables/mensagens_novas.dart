import '../database.dart';

class MensagensNovasTable extends SupabaseTable<MensagensNovasRow> {
  @override
  String get tableName => 'mensagens_novas';

  @override
  MensagensNovasRow createRow(Map<String, dynamic> data) =>
      MensagensNovasRow(data);
}

class MensagensNovasRow extends SupabaseDataRow {
  MensagensNovasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MensagensNovasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get naoLidas => getField<int>('nao_lidas');
  set naoLidas(int? value) => setField<int>('nao_lidas', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);
}
