// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseDeleteTrollyStruct extends BaseStruct {
  ResponseDeleteTrollyStruct({
    String? message,
    int? code,
  })  : _message = message,
        _code = code;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  set code(int? val) => _code = val;

  void incrementCode(int amount) => code = code + amount;

  bool hasCode() => _code != null;

  static ResponseDeleteTrollyStruct fromMap(Map<String, dynamic> data) =>
      ResponseDeleteTrollyStruct(
        message: data['message'] as String?,
        code: castToType<int>(data['code']),
      );

  static ResponseDeleteTrollyStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseDeleteTrollyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'code': _code,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.int,
        ),
      }.withoutNulls;

  static ResponseDeleteTrollyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ResponseDeleteTrollyStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ResponseDeleteTrollyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseDeleteTrollyStruct &&
        message == other.message &&
        code == other.code;
  }

  @override
  int get hashCode => const ListEquality().hash([message, code]);
}

ResponseDeleteTrollyStruct createResponseDeleteTrollyStruct({
  String? message,
  int? code,
}) =>
    ResponseDeleteTrollyStruct(
      message: message,
      code: code,
    );
