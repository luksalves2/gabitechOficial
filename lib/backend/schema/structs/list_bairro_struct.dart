// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListBairroStruct extends BaseStruct {
  ListBairroStruct({
    List<String>? bairro,
    List<int>? valor,
  })  : _bairro = bairro,
        _valor = valor;

  // "Bairro" field.
  List<String>? _bairro;
  List<String> get bairro => _bairro ?? const [];
  set bairro(List<String>? val) => _bairro = val;

  void updateBairro(Function(List<String>) updateFn) {
    updateFn(_bairro ??= []);
  }

  bool hasBairro() => _bairro != null;

  // "valor" field.
  List<int>? _valor;
  List<int> get valor => _valor ?? const [];
  set valor(List<int>? val) => _valor = val;

  void updateValor(Function(List<int>) updateFn) {
    updateFn(_valor ??= []);
  }

  bool hasValor() => _valor != null;

  static ListBairroStruct fromMap(Map<String, dynamic> data) =>
      ListBairroStruct(
        bairro: getDataList(data['Bairro']),
        valor: getDataList(data['valor']),
      );

  static ListBairroStruct? maybeFromMap(dynamic data) => data is Map
      ? ListBairroStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Bairro': _bairro,
        'valor': _valor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Bairro': serializeParam(
          _bairro,
          ParamType.String,
          isList: true,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static ListBairroStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListBairroStruct(
        bairro: deserializeParam<String>(
          data['Bairro'],
          ParamType.String,
          true,
        ),
        valor: deserializeParam<int>(
          data['valor'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'ListBairroStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListBairroStruct &&
        listEquality.equals(bairro, other.bairro) &&
        listEquality.equals(valor, other.valor);
  }

  @override
  int get hashCode => const ListEquality().hash([bairro, valor]);
}

ListBairroStruct createListBairroStruct() => ListBairroStruct();
