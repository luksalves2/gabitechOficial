import '../database.dart';

class ImagensUsadaCrmTable extends SupabaseTable<ImagensUsadaCrmRow> {
  @override
  String get tableName => 'imagens_usada_crm';

  @override
  ImagensUsadaCrmRow createRow(Map<String, dynamic> data) =>
      ImagensUsadaCrmRow(data);
}

class ImagensUsadaCrmRow extends SupabaseDataRow {
  ImagensUsadaCrmRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ImagensUsadaCrmTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get imagem => getField<String>('imagem');
  set imagem(String? value) => setField<String>('imagem', value);
}
