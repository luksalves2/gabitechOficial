import '../database.dart';

class GoogleContactsImportVTable
    extends SupabaseTable<GoogleContactsImportVRow> {
  @override
  String get tableName => 'google_contacts_import_v';

  @override
  GoogleContactsImportVRow createRow(Map<String, dynamic> data) =>
      GoogleContactsImportVRow(data);
}

class GoogleContactsImportVRow extends SupabaseDataRow {
  GoogleContactsImportVRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GoogleContactsImportVTable();

  String? get importId => getField<String>('import_id');
  set importId(String? value) => setField<String>('import_id', value);

  int? get rowNum => getField<int>('row_num');
  set rowNum(int? value) => setField<int>('row_num', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get uploadedBy => getField<String>('uploaded_by');
  set uploadedBy(String? value) => setField<String>('uploaded_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get middleName => getField<String>('middle_name');
  set middleName(String? value) => setField<String>('middle_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get phoneticFirstName => getField<String>('phonetic_first_name');
  set phoneticFirstName(String? value) =>
      setField<String>('phonetic_first_name', value);

  String? get phoneticMiddleName => getField<String>('phonetic_middle_name');
  set phoneticMiddleName(String? value) =>
      setField<String>('phonetic_middle_name', value);

  String? get phoneticLastName => getField<String>('phonetic_last_name');
  set phoneticLastName(String? value) =>
      setField<String>('phonetic_last_name', value);

  String? get namePrefix => getField<String>('name_prefix');
  set namePrefix(String? value) => setField<String>('name_prefix', value);

  String? get nameSuffix => getField<String>('name_suffix');
  set nameSuffix(String? value) => setField<String>('name_suffix', value);

  String? get nickname => getField<String>('nickname');
  set nickname(String? value) => setField<String>('nickname', value);

  String? get fileAs => getField<String>('file_as');
  set fileAs(String? value) => setField<String>('file_as', value);

  String? get organizationName => getField<String>('organization_name');
  set organizationName(String? value) =>
      setField<String>('organization_name', value);

  String? get organizationTitle => getField<String>('organization_title');
  set organizationTitle(String? value) =>
      setField<String>('organization_title', value);

  String? get organizationDepartment =>
      getField<String>('organization_department');
  set organizationDepartment(String? value) =>
      setField<String>('organization_department', value);

  String? get birthday => getField<String>('birthday');
  set birthday(String? value) => setField<String>('birthday', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get photo => getField<String>('photo');
  set photo(String? value) => setField<String>('photo', value);

  String? get labels => getField<String>('labels');
  set labels(String? value) => setField<String>('labels', value);

  String? get phone1Label => getField<String>('phone1_label');
  set phone1Label(String? value) => setField<String>('phone1_label', value);

  String? get phone1Value => getField<String>('phone1_value');
  set phone1Value(String? value) => setField<String>('phone1_value', value);

  String? get phone2Label => getField<String>('phone2_label');
  set phone2Label(String? value) => setField<String>('phone2_label', value);

  String? get phone2Value => getField<String>('phone2_value');
  set phone2Value(String? value) => setField<String>('phone2_value', value);

  String? get email1Label => getField<String>('email1_label');
  set email1Label(String? value) => setField<String>('email1_label', value);

  String? get email1Value => getField<String>('email1_value');
  set email1Value(String? value) => setField<String>('email1_value', value);

  String? get email2Label => getField<String>('email2_label');
  set email2Label(String? value) => setField<String>('email2_label', value);

  String? get email2Value => getField<String>('email2_value');
  set email2Value(String? value) => setField<String>('email2_value', value);

  String? get address1Label => getField<String>('address1_label');
  set address1Label(String? value) => setField<String>('address1_label', value);

  String? get address1Street => getField<String>('address1_street');
  set address1Street(String? value) =>
      setField<String>('address1_street', value);

  String? get address1City => getField<String>('address1_city');
  set address1City(String? value) => setField<String>('address1_city', value);

  String? get address1Region => getField<String>('address1_region');
  set address1Region(String? value) =>
      setField<String>('address1_region', value);

  String? get address1PostalCode => getField<String>('address1_postal_code');
  set address1PostalCode(String? value) =>
      setField<String>('address1_postal_code', value);

  String? get address1Country => getField<String>('address1_country');
  set address1Country(String? value) =>
      setField<String>('address1_country', value);

  dynamic? get rawJson => getField<dynamic>('raw_json');
  set rawJson(dynamic? value) => setField<dynamic>('raw_json', value);
}
