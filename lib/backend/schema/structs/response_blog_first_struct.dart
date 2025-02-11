// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseBlogFirstStruct extends BaseStruct {
  ResponseBlogFirstStruct({
    int? id,
    String? name,
    String? deskripsi,
    int? viewer,
    String? cover,
    String? kategori,
  })  : _id = id,
        _name = name,
        _deskripsi = deskripsi,
        _viewer = viewer,
        _cover = cover,
        _kategori = kategori;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "deskripsi" field.
  String? _deskripsi;
  String get deskripsi => _deskripsi ?? '';
  set deskripsi(String? val) => _deskripsi = val;

  bool hasDeskripsi() => _deskripsi != null;

  // "viewer" field.
  int? _viewer;
  int get viewer => _viewer ?? 0;
  set viewer(int? val) => _viewer = val;

  void incrementViewer(int amount) => viewer = viewer + amount;

  bool hasViewer() => _viewer != null;

  // "cover" field.
  String? _cover;
  String get cover => _cover ?? '';
  set cover(String? val) => _cover = val;

  bool hasCover() => _cover != null;

  // "kategori" field.
  String? _kategori;
  String get kategori => _kategori ?? '';
  set kategori(String? val) => _kategori = val;

  bool hasKategori() => _kategori != null;

  static ResponseBlogFirstStruct fromMap(Map<String, dynamic> data) =>
      ResponseBlogFirstStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        deskripsi: data['deskripsi'] as String?,
        viewer: castToType<int>(data['viewer']),
        cover: data['cover'] as String?,
        kategori: data['kategori'] as String?,
      );

  static ResponseBlogFirstStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseBlogFirstStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'deskripsi': _deskripsi,
        'viewer': _viewer,
        'cover': _cover,
        'kategori': _kategori,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'deskripsi': serializeParam(
          _deskripsi,
          ParamType.String,
        ),
        'viewer': serializeParam(
          _viewer,
          ParamType.int,
        ),
        'cover': serializeParam(
          _cover,
          ParamType.String,
        ),
        'kategori': serializeParam(
          _kategori,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponseBlogFirstStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ResponseBlogFirstStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        deskripsi: deserializeParam(
          data['deskripsi'],
          ParamType.String,
          false,
        ),
        viewer: deserializeParam(
          data['viewer'],
          ParamType.int,
          false,
        ),
        cover: deserializeParam(
          data['cover'],
          ParamType.String,
          false,
        ),
        kategori: deserializeParam(
          data['kategori'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResponseBlogFirstStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseBlogFirstStruct &&
        id == other.id &&
        name == other.name &&
        deskripsi == other.deskripsi &&
        viewer == other.viewer &&
        cover == other.cover &&
        kategori == other.kategori;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, deskripsi, viewer, cover, kategori]);
}

ResponseBlogFirstStruct createResponseBlogFirstStruct({
  int? id,
  String? name,
  String? deskripsi,
  int? viewer,
  String? cover,
  String? kategori,
}) =>
    ResponseBlogFirstStruct(
      id: id,
      name: name,
      deskripsi: deskripsi,
      viewer: viewer,
      cover: cover,
      kategori: kategori,
    );
