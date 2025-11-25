import '../database.dart';

class NotasAtividadesTable extends SupabaseTable<NotasAtividadesRow> {
  @override
  String get tableName => 'Notas_atividades';

  @override
  NotasAtividadesRow createRow(Map<String, dynamic> data) =>
      NotasAtividadesRow(data);
}

class NotasAtividadesRow extends SupabaseDataRow {
  NotasAtividadesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotasAtividadesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  DateTime? get dataCriacao => getField<DateTime>('data_criacao');
  set dataCriacao(DateTime? value) => setField<DateTime>('data_criacao', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get atividadeId => getField<String>('atividade_id');
  set atividadeId(String? value) => setField<String>('atividade_id', value);

  String? get descricaoAtividade => getField<String>('descricao_atividade');
  set descricaoAtividade(String? value) =>
      setField<String>('descricao_atividade', value);

  String? get nomeUser => getField<String>('nome_user');
  set nomeUser(String? value) => setField<String>('nome_user', value);

  String? get descricaoResponsavelAtendimento =>
      getField<String>('descricao_responsavel_atendimento');
  set descricaoResponsavelAtendimento(String? value) =>
      setField<String>('descricao_responsavel_atendimento', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);
}
