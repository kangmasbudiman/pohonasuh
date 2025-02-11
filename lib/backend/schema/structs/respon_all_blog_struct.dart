// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponAllBlogStruct extends BaseStruct {
  ResponAllBlogStruct({
    int? id,
    String? name,
    String? deskripsi,
    int? viewer,
    String? kategori,
    String? nama,
    String? createdAt,
    String? cover,
  })  : _id = id,
        _name = name,
        _deskripsi = deskripsi,
        _viewer = viewer,
        _kategori = kategori,
        _nama = nama,
        _createdAt = createdAt,
        _cover = cover;

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

  // "kategori" field.
  String? _kategori;
  String get kategori => _kategori ?? '';
  set kategori(String? val) => _kategori = val;

  bool hasKategori() => _kategori != null;

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  set nama(String? val) => _nama = val;

  bool hasNama() => _nama != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "cover" field.
  String? _cover;
  String get cover => _cover ?? '';
  set cover(String? val) => _cover = val;

  bool hasCover() => _cover != null;

  static ResponAllBlogStruct fromMap(Map<String, dynamic> data) =>
      ResponAllBlogStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        deskripsi: data['deskripsi'] as String?,
        viewer: castToType<int>(data['viewer']),
        kategori: data['kategori'] as String?,
        nama: data['nama'] as String?,
        createdAt: data['created_at'] as String?,
        cover: data['cover'] as String?,
      );

  static ResponAllBlogStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponAllBlogStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'deskripsi': _deskripsi,
        'viewer': _viewer,
        'kategori': _kategori,
        'nama': _nama,
        'created_at': _createdAt,
        'cover': _cover,
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
        'kategori': serializeParam(
          _kategori,
          ParamType.String,
        ),
        'nama': serializeParam(
          _nama,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'cover': serializeParam(
          _cover,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponAllBlogStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponAllBlogStruct(
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
        kategori: deserializeParam(
          data['kategori'],
          ParamType.String,
          false,
        ),
        nama: deserializeParam(
          data['nama'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        cover: deserializeParam(
          data['cover'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResponAllBlogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponAllBlogStruct &&
        id == other.id &&
        name == other.name &&
        deskripsi == other.deskripsi &&
        viewer == other.viewer &&
        kategori == other.kategori &&
        nama == other.nama &&
        createdAt == other.createdAt &&
        cover == other.cover;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, deskripsi, viewer, kategori, nama, createdAt, cover]);
}

ResponAllBlogStruct createResponAllBlogStruct({
  int? id,
  String? name,
  String? deskripsi,
  int? viewer,
  String? kategori,
  String? nama,
  String? createdAt,
  String? cover,
}) =>
    ResponAllBlogStruct(
      id: id,
      name: name,
      deskripsi: deskripsi,
      viewer: viewer,
      kategori: kategori,
      nama: nama,
      createdAt: createdAt,
      cover: cover,
    );
