// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponGetPesanStruct extends BaseStruct {
  ResponGetPesanStruct({
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

  static ResponGetPesanStruct fromMap(Map<String, dynamic> data) =>
      ResponGetPesanStruct(
        value: data['value'] as String?,
        jumlah: castToType<int>(data['jumlah']),
      );

  static ResponGetPesanStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponGetPesanStruct.fromMap(data.cast<String, dynamic>())
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

  static ResponGetPesanStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponGetPesanStruct(
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
  String toString() => 'ResponGetPesanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponGetPesanStruct &&
        value == other.value &&
        jumlah == other.jumlah;
  }

  @override
  int get hashCode => const ListEquality().hash([value, jumlah]);
}

ResponGetPesanStruct createResponGetPesanStruct({
  String? value,
  int? jumlah,
}) =>
    ResponGetPesanStruct(
      value: value,
      jumlah: jumlah,
    );
