// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListLatlngStruct extends BaseStruct {
  ListLatlngStruct({
    List<LatLng>? local,
  }) : _local = local;

  // "local" field.
  List<LatLng>? _local;
  List<LatLng> get local => _local ?? const [];
  set local(List<LatLng>? val) => _local = val;

  void updateLocal(Function(List<LatLng>) updateFn) {
    updateFn(_local ??= []);
  }

  bool hasLocal() => _local != null;

  static ListLatlngStruct fromMap(Map<String, dynamic> data) =>
      ListLatlngStruct(
        local: getDataList(data['local']),
      );

  static ListLatlngStruct? maybeFromMap(dynamic data) => data is Map
      ? ListLatlngStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'local': _local,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'local': serializeParam(
          _local,
          ParamType.LatLng,
          isList: true,
        ),
      }.withoutNulls;

  static ListLatlngStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListLatlngStruct(
        local: deserializeParam<LatLng>(
          data['local'],
          ParamType.LatLng,
          true,
        ),
      );

  @override
  String toString() => 'ListLatlngStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListLatlngStruct && listEquality.equals(local, other.local);
  }

  @override
  int get hashCode => const ListEquality().hash([local]);
}

ListLatlngStruct createListLatlngStruct() => ListLatlngStruct();
