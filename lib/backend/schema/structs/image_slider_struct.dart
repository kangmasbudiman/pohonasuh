// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageSliderStruct extends BaseStruct {
  ImageSliderStruct({
    String? urlnya,
  }) : _urlnya = urlnya;

  // "urlnya" field.
  String? _urlnya;
  String get urlnya => _urlnya ?? '';
  set urlnya(String? val) => _urlnya = val;

  bool hasUrlnya() => _urlnya != null;

  static ImageSliderStruct fromMap(Map<String, dynamic> data) =>
      ImageSliderStruct(
        urlnya: data['urlnya'] as String?,
      );

  static ImageSliderStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageSliderStruct.fromMap(data.cast<String, dynamic>())
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

  static ImageSliderStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageSliderStruct(
        urlnya: deserializeParam(
          data['urlnya'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageSliderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageSliderStruct && urlnya == other.urlnya;
  }

  @override
  int get hashCode => const ListEquality().hash([urlnya]);
}

ImageSliderStruct createImageSliderStruct({
  String? urlnya,
}) =>
    ImageSliderStruct(
      urlnya: urlnya,
    );
