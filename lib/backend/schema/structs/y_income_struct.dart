// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class YIncomeStruct extends BaseStruct {
  YIncomeStruct({
    List<double>? values,
  }) : _values = values;

  // "values" field.
  List<double>? _values;
  List<double> get values => _values ?? const [];
  set values(List<double>? val) => _values = val;

  void updateValues(Function(List<double>) updateFn) {
    updateFn(_values ??= []);
  }

  bool hasValues() => _values != null;

  static YIncomeStruct fromMap(Map<String, dynamic> data) => YIncomeStruct(
        values: getDataList(data['values']),
      );

  static YIncomeStruct? maybeFromMap(dynamic data) =>
      data is Map ? YIncomeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'values': _values,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'values': serializeParam(
          _values,
          ParamType.double,
          isList: true,
        ),
      }.withoutNulls;

  static YIncomeStruct fromSerializableMap(Map<String, dynamic> data) =>
      YIncomeStruct(
        values: deserializeParam<double>(
          data['values'],
          ParamType.double,
          true,
        ),
      );

  @override
  String toString() => 'YIncomeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is YIncomeStruct && listEquality.equals(values, other.values);
  }

  @override
  int get hashCode => const ListEquality().hash([values]);
}

YIncomeStruct createYIncomeStruct() => YIncomeStruct();
