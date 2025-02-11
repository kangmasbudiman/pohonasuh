// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SliderResponseStruct extends BaseStruct {
  SliderResponseStruct({
    int? id,
    String? judul,
    String? deskripsi,
    String? gambar,
  })  : _id = id,
        _judul = judul,
        _deskripsi = deskripsi,
        _gambar = gambar;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "judul" field.
  String? _judul;
  String get judul => _judul ?? '';
  set judul(String? val) => _judul = val;

  bool hasJudul() => _judul != null;

  // "deskripsi" field.
  String? _deskripsi;
  String get deskripsi => _deskripsi ?? '';
  set deskripsi(String? val) => _deskripsi = val;

  bool hasDeskripsi() => _deskripsi != null;

  // "gambar" field.
  String? _gambar;
  String get gambar => _gambar ?? '';
  set gambar(String? val) => _gambar = val;

  bool hasGambar() => _gambar != null;

  static SliderResponseStruct fromMap(Map<String, dynamic> data) =>
      SliderResponseStruct(
        id: castToType<int>(data['id']),
        judul: data['judul'] as String?,
        deskripsi: data['deskripsi'] as String?,
        gambar: data['gambar'] as String?,
      );

  static SliderResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? SliderResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'judul': _judul,
        'deskripsi': _deskripsi,
        'gambar': _gambar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'judul': serializeParam(
          _judul,
          ParamType.String,
        ),
        'deskripsi': serializeParam(
          _deskripsi,
          ParamType.String,
        ),
        'gambar': serializeParam(
          _gambar,
          ParamType.String,
        ),
      }.withoutNulls;

  static SliderResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      SliderResponseStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        judul: deserializeParam(
          data['judul'],
          ParamType.String,
          false,
        ),
        deskripsi: deserializeParam(
          data['deskripsi'],
          ParamType.String,
          false,
        ),
        gambar: deserializeParam(
          data['gambar'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SliderResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SliderResponseStruct &&
        id == other.id &&
        judul == other.judul &&
        deskripsi == other.deskripsi &&
        gambar == other.gambar;
  }

  @override
  int get hashCode => const ListEquality().hash([id, judul, deskripsi, gambar]);
}

SliderResponseStruct createSliderResponseStruct({
  int? id,
  String? judul,
  String? deskripsi,
  String? gambar,
}) =>
    SliderResponseStruct(
      id: id,
      judul: judul,
      deskripsi: deskripsi,
      gambar: gambar,
    );
