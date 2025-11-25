import '../database.dart';

class VwCidadaoSolicitacoesContagemMsgTable
    extends SupabaseTable<VwCidadaoSolicitacoesContagemMsgRow> {
  @override
  String get tableName => 'vw_cidadao_solicitacoes_contagem_msg';

  @override
  VwCidadaoSolicitacoesContagemMsgRow createRow(Map<String, dynamic> data) =>
      VwCidadaoSolicitacoesContagemMsgRow(data);
}

class VwCidadaoSolicitacoesContagemMsgRow extends SupabaseDataRow {
  VwCidadaoSolicitacoesContagemMsgRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwCidadaoSolicitacoesContagemMsgTable();

  String? get cidadaoId => getField<String>('cidadao_id');
  set cidadaoId(String? value) => setField<String>('cidadao_id', value);

  String? get gabineteId => getField<String>('gabinete_id');
  set gabineteId(String? value) => setField<String>('gabinete_id', value);

  String? get statusNome => getField<String>('status_nome');
  set statusNome(String? value) => setField<String>('status_nome', value);

  int? get valor => getField<int>('valor');
  set valor(int? value) => setField<int>('valor', value);
}
