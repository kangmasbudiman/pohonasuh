// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LihatfototagingStruct extends BaseStruct {
  LihatfototagingStruct({
    String? urlGambar,
  }) : _urlGambar = urlGambar;

  // "urlGambar" field.
  String? _urlGambar;
  String get urlGambar => _urlGambar ?? '';
  set urlGambar(String? val) => _urlGambar = val;

  bool hasUrlGambar() => _urlGambar != null;

  static LihatfototagingStruct fromMap(Map<String, dynamic> data) =>
      LihatfototagingStruct(
        urlGambar: data['urlGambar'] as String?,
      );

  static LihatfototagingStruct? maybeFromMap(dynamic data) => data is Map
      ? LihatfototagingStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'urlGambar': _urlGambar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'urlGambar': serializeParam(
          _urlGambar,
          ParamType.String,
        ),
      }.withoutNulls;

  static LihatfototagingStruct fromSerializableMap(Map<String, dynamic> data) =>
      LihatfototagingStruct(
        urlGambar: deserializeParam(
          data['urlGambar'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LihatfototagingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LihatfototagingStruct && urlGambar == other.urlGambar;
  }

  @override
  int get hashCode => const ListEquality().hash([urlGambar]);
}

LihatfototagingStruct createLihatfototagingStruct({
  String? urlGambar,
}) =>
    LihatfototagingStruct(
      urlGambar: urlGambar,
    );
