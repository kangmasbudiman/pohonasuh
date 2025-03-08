// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListPototagingStruct extends BaseStruct {
  ListPototagingStruct({
    int? idadopsi,
    String? image,
  })  : _idadopsi = idadopsi,
        _image = image;

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

  static ListPototagingStruct fromMap(Map<String, dynamic> data) =>
      ListPototagingStruct(
        idadopsi: castToType<int>(data['idadopsi']),
        image: data['image'] as String?,
      );

  static ListPototagingStruct? maybeFromMap(dynamic data) => data is Map
      ? ListPototagingStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idadopsi': _idadopsi,
        'image': _image,
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
      }.withoutNulls;

  static ListPototagingStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListPototagingStruct(
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
      );

  @override
  String toString() => 'ListPototagingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListPototagingStruct &&
        idadopsi == other.idadopsi &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([idadopsi, image]);
}

ListPototagingStruct createListPototagingStruct({
  int? idadopsi,
  String? image,
}) =>
    ListPototagingStruct(
      idadopsi: idadopsi,
      image: image,
    );
