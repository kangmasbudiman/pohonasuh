// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponregisterStruct extends BaseStruct {
  ResponregisterStruct({
    String? message,
    int? value,
  })  : _message = message,
        _value = value;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  set value(int? val) => _value = val;

  void incrementValue(int amount) => value = value + amount;

  bool hasValue() => _value != null;

  static ResponregisterStruct fromMap(Map<String, dynamic> data) =>
      ResponregisterStruct(
        message: data['message'] as String?,
        value: castToType<int>(data['value']),
      );

  static ResponregisterStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponregisterStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.int,
        ),
      }.withoutNulls;

  static ResponregisterStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponregisterStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ResponregisterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponregisterStruct &&
        message == other.message &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([message, value]);
}

ResponregisterStruct createResponregisterStruct({
  String? message,
  int? value,
}) =>
    ResponregisterStruct(
      message: message,
      value: value,
    );
