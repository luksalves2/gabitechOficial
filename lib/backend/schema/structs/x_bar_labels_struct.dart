// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class XBarLabelsStruct extends BaseStruct {
  XBarLabelsStruct({
    List<String>? solicitacoes,
  }) : _solicitacoes = solicitacoes;

  // "Solicitacoes" field.
  List<String>? _solicitacoes;
  List<String> get solicitacoes => _solicitacoes ?? const [];
  set solicitacoes(List<String>? val) => _solicitacoes = val;

  void updateSolicitacoes(Function(List<String>) updateFn) {
    updateFn(_solicitacoes ??= []);
  }

  bool hasSolicitacoes() => _solicitacoes != null;

  static XBarLabelsStruct fromMap(Map<String, dynamic> data) =>
      XBarLabelsStruct(
        solicitacoes: getDataList(data['Solicitacoes']),
      );

  static XBarLabelsStruct? maybeFromMap(dynamic data) => data is Map
      ? XBarLabelsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Solicitacoes': _solicitacoes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Solicitacoes': serializeParam(
          _solicitacoes,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static XBarLabelsStruct fromSerializableMap(Map<String, dynamic> data) =>
      XBarLabelsStruct(
        solicitacoes: deserializeParam<String>(
          data['Solicitacoes'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'XBarLabelsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is XBarLabelsStruct &&
        listEquality.equals(solicitacoes, other.solicitacoes);
  }

  @override
  int get hashCode => const ListEquality().hash([solicitacoes]);
}

XBarLabelsStruct createXBarLabelsStruct() => XBarLabelsStruct();
