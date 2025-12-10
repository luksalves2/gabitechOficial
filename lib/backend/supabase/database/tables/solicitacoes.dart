import '../database.dart';

class SolicitacoesTable extends SupabaseTable<SolicitacoesRow> {
  @override
  String get tableName => 'solicitacoes';

  @override
  SolicitacoesRow createRow(Map<String, dynamic> data) => SolicitacoesRow(data);
}

class SolicitacoesRow extends SupabaseDataRow {
  SolicitacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SolicitacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get gabinete => getField<int>('gabinete');
  set gabinete(int? value) => setField<int>('gabinete', value);

  int? get cidadao => getField<int>('cidadao');
  set cidadao(int? value) => setField<int>('cidadao', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get resumo => getField<String>('resumo');
  set resumo(String? value) => setField<String>('resumo', value);

  String? get acessor => getField<String>('acessor');
  set acessor(String? value) => setField<String>('acessor', value);

  String? get prazo => getField<String>('prazo');
  set prazo(String? value) => setField<String>('prazo', value);

  String? get prioridade => getField<String>('prioridade');
  set prioridade(String? value) => setField<String>('prioridade', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get categoriaId => getField<int>('categoria_id');
  set categoriaId(int? value) => setField<int>('categoria_id', value);

  String? get nomeAcessor => getField<String>('nome_acessor');
  set nomeAcessor(String? value) => setField<String>('nome_acessor', value);
}
