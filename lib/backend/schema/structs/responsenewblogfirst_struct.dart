// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponsenewblogfirstStruct extends BaseStruct {
  ResponsenewblogfirstStruct({
    int? id,
    String? name,
    String? deskripsi,
    int? viewer,
    String? kategori,
    String? nama,
    String? cover,
  })  : _id = id,
        _name = name,
        _deskripsi = deskripsi,
        _viewer = viewer,
        _kategori = kategori,
        _nama = nama,
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

  // "cover" field.
  String? _cover;
  String get cover => _cover ?? '';
  set cover(String? val) => _cover = val;

  bool hasCover() => _cover != null;

  static ResponsenewblogfirstStruct fromMap(Map<String, dynamic> data) =>
      ResponsenewblogfirstStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        deskripsi: data['deskripsi'] as String?,
        viewer: castToType<int>(data['viewer']),
        kategori: data['kategori'] as String?,
        nama: data['nama'] as String?,
        cover: data['cover'] as String?,
      );

  static ResponsenewblogfirstStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponsenewblogfirstStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'deskripsi': _deskripsi,
        'viewer': _viewer,
        'kategori': _kategori,
        'nama': _nama,
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
        'cover': serializeParam(
          _cover,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponsenewblogfirstStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ResponsenewblogfirstStruct(
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
        cover: deserializeParam(
          data['cover'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResponsenewblogfirstStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponsenewblogfirstStruct &&
        id == other.id &&
        name == other.name &&
        deskripsi == other.deskripsi &&
        viewer == other.viewer &&
        kategori == other.kategori &&
        nama == other.nama &&
        cover == other.cover;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, deskripsi, viewer, kategori, nama, cover]);
}

ResponsenewblogfirstStruct createResponsenewblogfirstStruct({
  int? id,
  String? name,
  String? deskripsi,
  int? viewer,
  String? kategori,
  String? nama,
  String? cover,
}) =>
    ResponsenewblogfirstStruct(
      id: id,
      name: name,
      deskripsi: deskripsi,
      viewer: viewer,
      kategori: kategori,
      nama: nama,
      cover: cover,
    );
