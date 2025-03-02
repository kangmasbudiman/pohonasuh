// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LatlangStruct extends BaseStruct {
  LatlangStruct({
    List<LatLng>? latlang,
  }) : _latlang = latlang;

  // "latlang" field.
  List<LatLng>? _latlang;
  List<LatLng> get latlang => _latlang ?? const [];
  set latlang(List<LatLng>? val) => _latlang = val;

  void updateLatlang(Function(List<LatLng>) updateFn) {
    updateFn(_latlang ??= []);
  }

  bool hasLatlang() => _latlang != null;

  static LatlangStruct fromMap(Map<String, dynamic> data) => LatlangStruct(
        latlang: getDataList(data['latlang']),
      );

  static LatlangStruct? maybeFromMap(dynamic data) =>
      data is Map ? LatlangStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'latlang': _latlang,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'latlang': serializeParam(
          _latlang,
          ParamType.LatLng,
          isList: true,
        ),
      }.withoutNulls;

  static LatlangStruct fromSerializableMap(Map<String, dynamic> data) =>
      LatlangStruct(
        latlang: deserializeParam<LatLng>(
          data['latlang'],
          ParamType.LatLng,
          true,
        ),
      );

  @override
  String toString() => 'LatlangStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LatlangStruct &&
        listEquality.equals(latlang, other.latlang);
  }

  @override
  int get hashCode => const ListEquality().hash([latlang]);
}

LatlangStruct createLatlangStruct() => LatlangStruct();
