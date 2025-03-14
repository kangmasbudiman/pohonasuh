// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListImageOnlineStruct extends BaseStruct {
  ListImageOnlineStruct({
    int? idadopsi,
    String? image,
    String? imageString,
  })  : _idadopsi = idadopsi,
        _image = image,
        _imageString = imageString;

  // "idadopsi" field.
  int? _idadopsi;
  int get idadopsi => _idadopsi ?? 0;
  set idadopsi(int? val) => _idadopsi = val;

  void incrementIdadopsi(int amount) => idadopsi = idadopsi + amount;

  bool hasIdadopsi() => _idadopsi != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "imageString" field.
  String? _imageString;
  String get imageString => _imageString ?? '';
  set imageString(String? val) => _imageString = val;

  bool hasImageString() => _imageString != null;

  static ListImageOnlineStruct fromMap(Map<String, dynamic> data) =>
      ListImageOnlineStruct(
        idadopsi: castToType<int>(data['idadopsi']),
        image: data['image'] as String?,
        imageString: data['imageString'] as String?,
      );

  static ListImageOnlineStruct? maybeFromMap(dynamic data) => data is Map
      ? ListImageOnlineStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idadopsi': _idadopsi,
        'image': _image,
        'imageString': _imageString,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idadopsi': serializeParam(
          _idadopsi,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'imageString': serializeParam(
          _imageString,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListImageOnlineStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListImageOnlineStruct(
        idadopsi: deserializeParam(
          data['idadopsi'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        imageString: deserializeParam(
          data['imageString'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListImageOnlineStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListImageOnlineStruct &&
        idadopsi == other.idadopsi &&
        image == other.image &&
        imageString == other.imageString;
  }

  @override
  int get hashCode => const ListEquality().hash([idadopsi, image, imageString]);
}

ListImageOnlineStruct createListImageOnlineStruct({
  int? idadopsi,
  String? image,
  String? imageString,
}) =>
    ListImageOnlineStruct(
      idadopsi: idadopsi,
      image: image,
      imageString: imageString,
    );
