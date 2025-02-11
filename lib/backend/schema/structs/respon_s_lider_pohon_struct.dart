// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponSLiderPohonStruct extends BaseStruct {
  ResponSLiderPohonStruct({
    String? urlnya,
  }) : _urlnya = urlnya;

  // "urlnya" field.
  String? _urlnya;
  String get urlnya => _urlnya ?? '';
  set urlnya(String? val) => _urlnya = val;

  bool hasUrlnya() => _urlnya != null;

  static ResponSLiderPohonStruct fromMap(Map<String, dynamic> data) =>
      ResponSLiderPohonStruct(
        urlnya: data['urlnya'] as String?,
      );

  static ResponSLiderPohonStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponSLiderPohonStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'urlnya': _urlnya,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'urlnya': serializeParam(
          _urlnya,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponSLiderPohonStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ResponSLiderPohonStruct(
        urlnya: deserializeParam(
          data['urlnya'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResponSLiderPohonStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponSLiderPohonStruct && urlnya == other.urlnya;
  }

  @override
  int get hashCode => const ListEquality().hash([urlnya]);
}

ResponSLiderPohonStruct createResponSLiderPohonStruct({
  String? urlnya,
}) =>
    ResponSLiderPohonStruct(
      urlnya: urlnya,
    );
