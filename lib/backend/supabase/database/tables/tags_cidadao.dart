import '../database.dart';

class TagsCidadaoTable extends SupabaseTable<TagsCidadaoRow> {
  @override
  String get tableName => 'tags_cidadao';

  @override
  TagsCidadaoRow createRow(Map<String, dynamic> data) => TagsCidadaoRow(data);
}

class TagsCidadaoRow extends SupabaseDataRow {
  TagsCidadaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TagsCidadaoTable();

  String? get tagTipo => getField<String>('tag_tipo');
  set tagTipo(String? value) => setField<String>('tag_tipo', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);
}
