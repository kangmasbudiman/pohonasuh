// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RespondesaStruct extends BaseStruct {
  RespondesaStruct({
    int? id,
    String? nama,
    String? profil,
    String? latitude,
    String? longitude,
    String? hutanDesa,
    int? adopted,
    int? available,
    int? total,
    String? provinsi,
    String? kecamatan,
    String? kabupaten,
    String? adminDesa,
    String? foto,
  })  : _id = id,
        _nama = nama,
        _profil = profil,
        _latitude = latitude,
        _longitude = longitude,
        _hutanDesa = hutanDesa,
        _adopted = adopted,
        _available = available,
        _total = total,
        _provinsi = provinsi,
        _kecamatan = kecamatan,
        _kabupaten = kabupaten,
        _adminDesa = adminDesa,
        _foto = foto;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  set nama(String? val) => _nama = val;

  bool hasNama() => _nama != null;

  // "profil" field.
  String? _profil;
  String get profil => _profil ?? '';
  set profil(String? val) => _profil = val;

  bool hasProfil() => _profil != null;

  // "latitude" field.
  String? _latitude;
  String get latitude => _latitude ?? '';
  set latitude(String? val) => _latitude = val;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  String? _longitude;
  String get longitude => _longitude ?? '';
  set longitude(String? val) => _longitude = val;

  bool hasLongitude() => _longitude != null;

  // "hutan_desa" field.
  String? _hutanDesa;
  String get hutanDesa => _hutanDesa ?? '';
  set hutanDesa(String? val) => _hutanDesa = val;

  bool hasHutanDesa() => _hutanDesa != null;

  // "adopted" field.
  int? _adopted;
  int get adopted => _adopted ?? 0;
  set adopted(int? val) => _adopted = val;

  void incrementAdopted(int amount) => adopted = adopted + amount;

  bool hasAdopted() => _adopted != null;

  // "available" field.
  int? _available;
  int get available => _available ?? 0;
  set available(int? val) => _available = val;

  void incrementAvailable(int amount) => available = available + amount;

  bool hasAvailable() => _available != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "provinsi" field.
  String? _provinsi;
  String get provinsi => _provinsi ?? '';
  set provinsi(String? val) => _provinsi = val;

  bool hasProvinsi() => _provinsi != null;

  // "kecamatan" field.
  String? _kecamatan;
  String get kecamatan => _kecamatan ?? '';
  set kecamatan(String? val) => _kecamatan = val;

  bool hasKecamatan() => _kecamatan != null;

  // "kabupaten" field.
  String? _kabupaten;
  String get kabupaten => _kabupaten ?? '';
  set kabupaten(String? val) => _kabupaten = val;

  bool hasKabupaten() => _kabupaten != null;

  // "admin_desa" field.
  String? _adminDesa;
  String get adminDesa => _adminDesa ?? '';
  set adminDesa(String? val) => _adminDesa = val;

  bool hasAdminDesa() => _adminDesa != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  static RespondesaStruct fromMap(Map<String, dynamic> data) =>
      RespondesaStruct(
        id: castToType<int>(data['id']),
        nama: data['nama'] as String?,
        profil: data['profil'] as String?,
        latitude: data['latitude'] as String?,
        longitude: data['longitude'] as String?,
        hutanDesa: data['hutan_desa'] as String?,
        adopted: castToType<int>(data['adopted']),
        available: castToType<int>(data['available']),
        total: castToType<int>(data['total']),
        provinsi: data['provinsi'] as String?,
        kecamatan: data['kecamatan'] as String?,
        kabupaten: data['kabupaten'] as String?,
        adminDesa: data['admin_desa'] as String?,
        foto: data['foto'] as String?,
      );

  static RespondesaStruct? maybeFromMap(dynamic data) => data is Map
      ? RespondesaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nama': _nama,
        'profil': _profil,
        'latitude': _latitude,
        'longitude': _longitude,
        'hutan_desa': _hutanDesa,
        'adopted': _adopted,
        'available': _available,
        'total': _total,
        'provinsi': _provinsi,
        'kecamatan': _kecamatan,
        'kabupaten': _kabupaten,
        'admin_desa': _adminDesa,
        'foto': _foto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nama': serializeParam(
          _nama,
          ParamType.String,
        ),
        'profil': serializeParam(
          _profil,
          ParamType.String,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.String,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.String,
        ),
        'hutan_desa': serializeParam(
          _hutanDesa,
          ParamType.String,
        ),
        'adopted': serializeParam(
          _adopted,
          ParamType.int,
        ),
        'available': serializeParam(
          _available,
          ParamType.int,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'provinsi': serializeParam(
          _provinsi,
          ParamType.String,
        ),
        'kecamatan': serializeParam(
          _kecamatan,
          ParamType.String,
        ),
        'kabupaten': serializeParam(
          _kabupaten,
          ParamType.String,
        ),
        'admin_desa': serializeParam(
          _adminDesa,
          ParamType.String,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
      }.withoutNulls;

  static RespondesaStruct fromSerializableMap(Map<String, dynamic> data) =>
      RespondesaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nama: deserializeParam(
          data['nama'],
          ParamType.String,
          false,
        ),
        profil: deserializeParam(
          data['profil'],
          ParamType.String,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.String,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.String,
          false,
        ),
        hutanDesa: deserializeParam(
          data['hutan_desa'],
          ParamType.String,
          false,
        ),
        adopted: deserializeParam(
          data['adopted'],
          ParamType.int,
          false,
        ),
        available: deserializeParam(
          data['available'],
          ParamType.int,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        provinsi: deserializeParam(
          data['provinsi'],
          ParamType.String,
          false,
        ),
        kecamatan: deserializeParam(
          data['kecamatan'],
          ParamType.String,
          false,
        ),
        kabupaten: deserializeParam(
          data['kabupaten'],
          ParamType.String,
          false,
        ),
        adminDesa: deserializeParam(
          data['admin_desa'],
          ParamType.String,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RespondesaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RespondesaStruct &&
        id == other.id &&
        nama == other.nama &&
        profil == other.profil &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        hutanDesa == other.hutanDesa &&
        adopted == other.adopted &&
        available == other.available &&
        total == other.total &&
        provinsi == other.provinsi &&
        kecamatan == other.kecamatan &&
        kabupaten == other.kabupaten &&
        adminDesa == other.adminDesa &&
        foto == other.foto;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nama,
        profil,
        latitude,
        longitude,
        hutanDesa,
        adopted,
        available,
        total,
        provinsi,
        kecamatan,
        kabupaten,
        adminDesa,
        foto
      ]);
}

RespondesaStruct createRespondesaStruct({
  int? id,
  String? nama,
  String? profil,
  String? latitude,
  String? longitude,
  String? hutanDesa,
  int? adopted,
  int? available,
  int? total,
  String? provinsi,
  String? kecamatan,
  String? kabupaten,
  String? adminDesa,
  String? foto,
}) =>
    RespondesaStruct(
      id: id,
      nama: nama,
      profil: profil,
      latitude: latitude,
      longitude: longitude,
      hutanDesa: hutanDesa,
      adopted: adopted,
      available: available,
      total: total,
      provinsi: provinsi,
      kecamatan: kecamatan,
      kabupaten: kabupaten,
      adminDesa: adminDesa,
      foto: foto,
    );
