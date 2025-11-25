import '../database.dart';

class ContagemCidadaoTable extends SupabaseTable<ContagemCidadaoRow> {
  @override
  String get tableName => 'contagem_cidadao';

  @override
  ContagemCidadaoRow createRow(Map<String, dynamic> data) =>
      ContagemCidadaoRow(data);
}

class ContagemCidadaoRow extends SupabaseDataRow {
  ContagemCidadaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContagemCidadaoTable();

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  int? get cidadaosComSolicitacoesAbertas =>
      getField<int>('cidadaos_com_solicitacoes_abertas');
  set cidadaosComSolicitacoesAbertas(int? value) =>
      setField<int>('cidadaos_com_solicitacoes_abertas', value);

  int? get totalCidadaos => getField<int>('total_cidadaos');
  set totalCidadaos(int? value) => setField<int>('total_cidadaos', value);

  int? get cidadaosPreCadastrados => getField<int>('cidadaos_pre_cadastrados');
  set cidadaosPreCadastrados(int? value) =>
      setField<int>('cidadaos_pre_cadastrados', value);

  int? get cidadaosTotalRegistrados =>
      getField<int>('cidadaos_total_registrados');
  set cidadaosTotalRegistrados(int? value) =>
      setField<int>('cidadaos_total_registrados', value);

  int? get gruposTotal => getField<int>('grupos_total');
  set gruposTotal(int? value) => setField<int>('grupos_total', value);

  int? get aniversariosHoje => getField<int>('aniversarios_hoje');
  set aniversariosHoje(int? value) => setField<int>('aniversarios_hoje', value);

  int? get aniversarios7dias => getField<int>('aniversarios_7dias');
  set aniversarios7dias(int? value) =>
      setField<int>('aniversarios_7dias', value);

  int? get aniversarios30dias => getField<int>('aniversarios_30dias');
  set aniversarios30dias(int? value) =>
      setField<int>('aniversarios_30dias', value);

  int? get semContato14d => getField<int>('sem_contato_14d');
  set semContato14d(int? value) => setField<int>('sem_contato_14d', value);

  int? get semContato30d => getField<int>('sem_contato_30d');
  set semContato30d(int? value) => setField<int>('sem_contato_30d', value);

  int? get semTelefone => getField<int>('sem_telefone');
  set semTelefone(int? value) => setField<int>('sem_telefone', value);

  int? get semBairro => getField<int>('sem_bairro');
  set semBairro(int? value) => setField<int>('sem_bairro', value);

  int? get semCidade => getField<int>('sem_cidade');
  set semCidade(int? value) => setField<int>('sem_cidade', value);

  int? get semDataNascimento => getField<int>('sem_data_nascimento');
  set semDataNascimento(int? value) =>
      setField<int>('sem_data_nascimento', value);

  int? get possiveisDuplicadosPhone =>
      getField<int>('possiveis_duplicados_phone');
  set possiveisDuplicadosPhone(int? value) =>
      setField<int>('possiveis_duplicados_phone', value);

  dynamic? get distribuicaoPorBairro =>
      getField<dynamic>('distribuicao_por_bairro');
  set distribuicaoPorBairro(dynamic? value) =>
      setField<dynamic>('distribuicao_por_bairro', value);

  dynamic? get distribuicaoPorGenero =>
      getField<dynamic>('distribuicao_por_genero');
  set distribuicaoPorGenero(dynamic? value) =>
      setField<dynamic>('distribuicao_por_genero', value);

  dynamic? get distribuicaoPorFaixaEtaria =>
      getField<dynamic>('distribuicao_por_faixa_etaria');
  set distribuicaoPorFaixaEtaria(dynamic? value) =>
      setField<dynamic>('distribuicao_por_faixa_etaria', value);
}
