// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaAtividadesStruct extends BaseStruct {
  ListaAtividadesStruct({
    String? atividadeId,
    String? descricao,
    String? gabineteId,
    bool? vinculada,
  })  : _atividadeId = atividadeId,
        _descricao = descricao,
        _gabineteId = gabineteId,
        _vinculada = vinculada;

  // "atividade_id" field.
  String? _atividadeId;
  String get atividadeId => _atividadeId ?? '';
  set atividadeId(String? val) => _atividadeId = val;

  bool hasAtividadeId() => _atividadeId != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "gabinete_id" field.
  String? _gabineteId;
  String get gabineteId => _gabineteId ?? '';
  set gabineteId(String? val) => _gabineteId = val;

  bool hasGabineteId() => _gabineteId != null;

  // "vinculada" field.
  bool? _vinculada;
  bool get vinculada => _vinculada ?? false;
  set vinculada(bool? val) => _vinculada = val;

  bool hasVinculada() => _vinculada != null;

  static ListaAtividadesStruct fromMap(Map<String, dynamic> data) =>
      ListaAtividadesStruct(
        atividadeId: data['atividade_id'] as String?,
        descricao: data['descricao'] as String?,
        gabineteId: data['gabinete_id'] as String?,
        vinculada: data['vinculada'] as bool?,
      );

  static ListaAtividadesStruct? maybeFromMap(dynamic data) => data is Map
      ? ListaAtividadesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'atividade_id': _atividadeId,
        'descricao': _descricao,
        'gabinete_id': _gabineteId,
        'vinculada': _vinculada,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'atividade_id': serializeParam(
          _atividadeId,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'gabinete_id': serializeParam(
          _gabineteId,
          ParamType.String,
        ),
        'vinculada': serializeParam(
          _vinculada,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ListaAtividadesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListaAtividadesStruct(
        atividadeId: deserializeParam(
          data['atividade_id'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        gabineteId: deserializeParam(
          data['gabinete_id'],
          ParamType.String,
          false,
        ),
        vinculada: deserializeParam(
          data['vinculada'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ListaAtividadesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListaAtividadesStruct &&
        atividadeId == other.atividadeId &&
        descricao == other.descricao &&
        gabineteId == other.gabineteId &&
        vinculada == other.vinculada;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([atividadeId, descricao, gabineteId, vinculada]);
}

ListaAtividadesStruct createListaAtividadesStruct({
  String? atividadeId,
  String? descricao,
  String? gabineteId,
  bool? vinculada,
}) =>
    ListaAtividadesStruct(
      atividadeId: atividadeId,
      descricao: descricao,
      gabineteId: gabineteId,
      vinculada: vinculada,
    );
