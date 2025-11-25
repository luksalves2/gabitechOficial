import '../database.dart';

class DestinatariosProgramacaoTable
    extends SupabaseTable<DestinatariosProgramacaoRow> {
  @override
  String get tableName => 'destinatarios_programacao';

  @override
  DestinatariosProgramacaoRow createRow(Map<String, dynamic> data) =>
      DestinatariosProgramacaoRow(data);
}

class DestinatariosProgramacaoRow extends SupabaseDataRow {
  DestinatariosProgramacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DestinatariosProgramacaoTable();

  int get programacaoId => getField<int>('programacao_id')!;
  set programacaoId(int value) => setField<int>('programacao_id', value);

  String get cidadaoId => getField<String>('cidadao_id')!;
  set cidadaoId(String value) => setField<String>('cidadao_id', value);

  String get phone => getField<String>('phone')!;
  set phone(String value) => setField<String>('phone', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
