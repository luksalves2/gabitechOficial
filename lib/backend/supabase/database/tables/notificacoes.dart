import '../database.dart';

class NotificacoesTable extends SupabaseTable<NotificacoesRow> {
  @override
  String get tableName => 'notificacoes';

  @override
  NotificacoesRow createRow(Map<String, dynamic> data) => NotificacoesRow(data);
}

class NotificacoesRow extends SupabaseDataRow {
  NotificacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get gabinete => getField<int>('gabinete');
  set gabinete(int? value) => setField<int>('gabinete', value);

  int? get solicitacao => getField<int>('solicitacao');
  set solicitacao(int? value) => setField<int>('solicitacao', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  int? get diasAntes => getField<int>('dias_antes');
  set diasAntes(int? value) => setField<int>('dias_antes', value);
}
