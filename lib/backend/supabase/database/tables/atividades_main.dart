import '../database.dart';

class AtividadesMainTable extends SupabaseTable<AtividadesMainRow> {
  @override
  String get tableName => 'Atividades_main';

  @override
  AtividadesMainRow createRow(Map<String, dynamic> data) =>
      AtividadesMainRow(data);
}

class AtividadesMainRow extends SupabaseDataRow {
  AtividadesMainRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AtividadesMainTable();

  String get atvId => getField<String>('atv__id')!;
  set atvId(String value) => setField<String>('atv__id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  DateTime? get dataCriacao => getField<DateTime>('data_criacao');
  set dataCriacao(DateTime? value) => setField<DateTime>('data_criacao', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  bool? get statusAtv => getField<bool>('status_atv');
  set statusAtv(bool? value) => setField<bool>('status_atv', value);

  String? get categoriaId => getField<String>('categoria_id');
  set categoriaId(String? value) => setField<String>('categoria_id', value);

  String? get atividadeId => getField<String>('atividade_id');
  set atividadeId(String? value) => setField<String>('atividade_id', value);
}
