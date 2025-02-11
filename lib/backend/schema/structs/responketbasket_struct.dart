// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponketbasketStruct extends BaseStruct {
  ResponketbasketStruct({
    String? value,
    int? jumlah,
  })  : _value = value,
        _jumlah = jumlah;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  // "jumlah" field.
  int? _jumlah;
  int get jumlah => _jumlah ?? 0;
  set jumlah(int? val) => _jumlah = val;

  void incrementJumlah(int amount) => jumlah = jumlah + amount;

  bool hasJumlah() => _jumlah != null;

  static ResponketbasketStruct fromMap(Map<String, dynamic> data) =>
      ResponketbasketStruct(
        value: data['value'] as String?,
        jumlah: castToType<int>(data['jumlah']),
      );

  static ResponketbasketStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponketbasketStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'value': _value,
        'jumlah': _jumlah,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
        'jumlah': serializeParam(
          _jumlah,
          ParamType.int,
        ),
      }.withoutNulls;

  static ResponketbasketStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponketbasketStruct(
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
        jumlah: deserializeParam(
          data['jumlah'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ResponketbasketStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponketbasketStruct &&
        value == other.value &&
        jumlah == other.jumlah;
  }

  @override
  int get hashCode => const ListEquality().hash([value, jumlah]);
}

ResponketbasketStruct createResponketbasketStruct({
  String? value,
  int? jumlah,
}) =>
    ResponketbasketStruct(
      value: value,
      jumlah: jumlah,
    );
