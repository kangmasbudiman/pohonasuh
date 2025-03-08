// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatafototagingStruct extends BaseStruct {
  DatafototagingStruct({
    String? idpohon,
    String? tanggaladopt,
    String? keterangan,
    int? idadopsi,
    int? idmember,
    String? caption,
    List<String>? foto,
    String? namaPohon,
  })  : _idpohon = idpohon,
        _tanggaladopt = tanggaladopt,
        _keterangan = keterangan,
        _idadopsi = idadopsi,
        _idmember = idmember,
        _caption = caption,
        _foto = foto,
        _namaPohon = namaPohon;

  // "idpohon" field.
  String? _idpohon;
  String get idpohon => _idpohon ?? '';
  set idpohon(String? val) => _idpohon = val;

  bool hasIdpohon() => _idpohon != null;

  // "tanggaladopt" field.
  String? _tanggaladopt;
  String get tanggaladopt => _tanggaladopt ?? '';
  set tanggaladopt(String? val) => _tanggaladopt = val;

  bool hasTanggaladopt() => _tanggaladopt != null;

  // "keterangan" field.
  String? _keterangan;
  String get keterangan => _keterangan ?? '';
  set keterangan(String? val) => _keterangan = val;

  bool hasKeterangan() => _keterangan != null;

  // "idadopsi" field.
  int? _idadopsi;
  int get idadopsi => _idadopsi ?? 0;
  set idadopsi(int? val) => _idadopsi = val;

  void incrementIdadopsi(int amount) => idadopsi = idadopsi + amount;

  bool hasIdadopsi() => _idadopsi != null;

  // "idmember" field.
  int? _idmember;
  int get idmember => _idmember ?? 0;
  set idmember(int? val) => _idmember = val;

  void incrementIdmember(int amount) => idmember = idmember + amount;

  bool hasIdmember() => _idmember != null;

  // "caption" field.
  String? _caption;
  String get caption => _caption ?? '';
  set caption(String? val) => _caption = val;

  bool hasCaption() => _caption != null;

  // "foto" field.
  List<String>? _foto;
  List<String> get foto => _foto ?? const [];
  set foto(List<String>? val) => _foto = val;

  void updateFoto(Function(List<String>) updateFn) {
    updateFn(_foto ??= []);
  }

  bool hasFoto() => _foto != null;

  // "namaPohon" field.
  String? _namaPohon;
  String get namaPohon => _namaPohon ?? '';
  set namaPohon(String? val) => _namaPohon = val;

  bool hasNamaPohon() => _namaPohon != null;

  static DatafototagingStruct fromMap(Map<String, dynamic> data) =>
      DatafototagingStruct(
        idpohon: data['idpohon'] as String?,
        tanggaladopt: data['tanggaladopt'] as String?,
        keterangan: data['keterangan'] as String?,
        idadopsi: castToType<int>(data['idadopsi']),
        idmember: castToType<int>(data['idmember']),
        caption: data['caption'] as String?,
        foto: getDataList(data['foto']),
        namaPohon: data['namaPohon'] as String?,
      );

  static DatafototagingStruct? maybeFromMap(dynamic data) => data is Map
      ? DatafototagingStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idpohon': _idpohon,
        'tanggaladopt': _tanggaladopt,
        'keterangan': _keterangan,
        'idadopsi': _idadopsi,
        'idmember': _idmember,
        'caption': _caption,
        'foto': _foto,
        'namaPohon': _namaPohon,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idpohon': serializeParam(
          _idpohon,
          ParamType.String,
        ),
        'tanggaladopt': serializeParam(
          _tanggaladopt,
          ParamType.String,
        ),
        'keterangan': serializeParam(
          _keterangan,
          ParamType.String,
        ),
        'idadopsi': serializeParam(
          _idadopsi,
          ParamType.int,
        ),
        'idmember': serializeParam(
          _idmember,
          ParamType.int,
        ),
        'caption': serializeParam(
          _caption,
          ParamType.String,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
          isList: true,
        ),
        'namaPohon': serializeParam(
          _namaPohon,
          ParamType.String,
        ),
      }.withoutNulls;

  static DatafototagingStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatafototagingStruct(
        idpohon: deserializeParam(
          data['idpohon'],
          ParamType.String,
          false,
        ),
        tanggaladopt: deserializeParam(
          data['tanggaladopt'],
          ParamType.String,
          false,
        ),
        keterangan: deserializeParam(
          data['keterangan'],
          ParamType.String,
          false,
        ),
        idadopsi: deserializeParam(
          data['idadopsi'],
          ParamType.int,
          false,
        ),
        idmember: deserializeParam(
          data['idmember'],
          ParamType.int,
          false,
        ),
        caption: deserializeParam(
          data['caption'],
          ParamType.String,
          false,
        ),
        foto: deserializeParam<String>(
          data['foto'],
          ParamType.String,
          true,
        ),
        namaPohon: deserializeParam(
          data['namaPohon'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DatafototagingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DatafototagingStruct &&
        idpohon == other.idpohon &&
        tanggaladopt == other.tanggaladopt &&
        keterangan == other.keterangan &&
        idadopsi == other.idadopsi &&
        idmember == other.idmember &&
        caption == other.caption &&
        listEquality.equals(foto, other.foto) &&
        namaPohon == other.namaPohon;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idpohon,
        tanggaladopt,
        keterangan,
        idadopsi,
        idmember,
        caption,
        foto,
        namaPohon
      ]);
}

DatafototagingStruct createDatafototagingStruct({
  String? idpohon,
  String? tanggaladopt,
  String? keterangan,
  int? idadopsi,
  int? idmember,
  String? caption,
  String? namaPohon,
}) =>
    DatafototagingStruct(
      idpohon: idpohon,
      tanggaladopt: tanggaladopt,
      keterangan: keterangan,
      idadopsi: idadopsi,
      idmember: idmember,
      caption: caption,
      namaPohon: namaPohon,
    );
