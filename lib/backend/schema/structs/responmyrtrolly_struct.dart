// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponmyrtrollyStruct extends BaseStruct {
  ResponmyrtrollyStruct({
    int? id,
    String? idpohon,
    int? years,
    String? pesan,
    String? tanggal,
    String? localname,
    String? desa,
    int? harga,
    String? subtotal,
    String? fotoPohon,
  })  : _id = id,
        _idpohon = idpohon,
        _years = years,
        _pesan = pesan,
        _tanggal = tanggal,
        _localname = localname,
        _desa = desa,
        _harga = harga,
        _subtotal = subtotal,
        _fotoPohon = fotoPohon;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "idpohon" field.
  String? _idpohon;
  String get idpohon => _idpohon ?? '';
  set idpohon(String? val) => _idpohon = val;

  bool hasIdpohon() => _idpohon != null;

  // "years" field.
  int? _years;
  int get years => _years ?? 0;
  set years(int? val) => _years = val;

  void incrementYears(int amount) => years = years + amount;

  bool hasYears() => _years != null;

  // "pesan" field.
  String? _pesan;
  String get pesan => _pesan ?? '';
  set pesan(String? val) => _pesan = val;

  bool hasPesan() => _pesan != null;

  // "tanggal" field.
  String? _tanggal;
  String get tanggal => _tanggal ?? '';
  set tanggal(String? val) => _tanggal = val;

  bool hasTanggal() => _tanggal != null;

  // "localname" field.
  String? _localname;
  String get localname => _localname ?? '';
  set localname(String? val) => _localname = val;

  bool hasLocalname() => _localname != null;

  // "desa" field.
  String? _desa;
  String get desa => _desa ?? '';
  set desa(String? val) => _desa = val;

  bool hasDesa() => _desa != null;

  // "harga" field.
  int? _harga;
  int get harga => _harga ?? 0;
  set harga(int? val) => _harga = val;

  void incrementHarga(int amount) => harga = harga + amount;

  bool hasHarga() => _harga != null;

  // "subtotal" field.
  String? _subtotal;
  String get subtotal => _subtotal ?? '';
  set subtotal(String? val) => _subtotal = val;

  bool hasSubtotal() => _subtotal != null;

  // "foto_pohon" field.
  String? _fotoPohon;
  String get fotoPohon => _fotoPohon ?? '';
  set fotoPohon(String? val) => _fotoPohon = val;

  bool hasFotoPohon() => _fotoPohon != null;

  static ResponmyrtrollyStruct fromMap(Map<String, dynamic> data) =>
      ResponmyrtrollyStruct(
        id: castToType<int>(data['id']),
        idpohon: data['idpohon'] as String?,
        years: castToType<int>(data['years']),
        pesan: data['pesan'] as String?,
        tanggal: data['tanggal'] as String?,
        localname: data['localname'] as String?,
        desa: data['desa'] as String?,
        harga: castToType<int>(data['harga']),
        subtotal: data['subtotal'] as String?,
        fotoPohon: data['foto_pohon'] as String?,
      );

  static ResponmyrtrollyStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponmyrtrollyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'idpohon': _idpohon,
        'years': _years,
        'pesan': _pesan,
        'tanggal': _tanggal,
        'localname': _localname,
        'desa': _desa,
        'harga': _harga,
        'subtotal': _subtotal,
        'foto_pohon': _fotoPohon,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'idpohon': serializeParam(
          _idpohon,
          ParamType.String,
        ),
        'years': serializeParam(
          _years,
          ParamType.int,
        ),
        'pesan': serializeParam(
          _pesan,
          ParamType.String,
        ),
        'tanggal': serializeParam(
          _tanggal,
          ParamType.String,
        ),
        'localname': serializeParam(
          _localname,
          ParamType.String,
        ),
        'desa': serializeParam(
          _desa,
          ParamType.String,
        ),
        'harga': serializeParam(
          _harga,
          ParamType.int,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.String,
        ),
        'foto_pohon': serializeParam(
          _fotoPohon,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponmyrtrollyStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponmyrtrollyStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        idpohon: deserializeParam(
          data['idpohon'],
          ParamType.String,
          false,
        ),
        years: deserializeParam(
          data['years'],
          ParamType.int,
          false,
        ),
        pesan: deserializeParam(
          data['pesan'],
          ParamType.String,
          false,
        ),
        tanggal: deserializeParam(
          data['tanggal'],
          ParamType.String,
          false,
        ),
        localname: deserializeParam(
          data['localname'],
          ParamType.String,
          false,
        ),
        desa: deserializeParam(
          data['desa'],
          ParamType.String,
          false,
        ),
        harga: deserializeParam(
          data['harga'],
          ParamType.int,
          false,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.String,
          false,
        ),
        fotoPohon: deserializeParam(
          data['foto_pohon'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResponmyrtrollyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponmyrtrollyStruct &&
        id == other.id &&
        idpohon == other.idpohon &&
        years == other.years &&
        pesan == other.pesan &&
        tanggal == other.tanggal &&
        localname == other.localname &&
        desa == other.desa &&
        harga == other.harga &&
        subtotal == other.subtotal &&
        fotoPohon == other.fotoPohon;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        idpohon,
        years,
        pesan,
        tanggal,
        localname,
        desa,
        harga,
        subtotal,
        fotoPohon
      ]);
}

ResponmyrtrollyStruct createResponmyrtrollyStruct({
  int? id,
  String? idpohon,
  int? years,
  String? pesan,
  String? tanggal,
  String? localname,
  String? desa,
  int? harga,
  String? subtotal,
  String? fotoPohon,
}) =>
    ResponmyrtrollyStruct(
      id: id,
      idpohon: idpohon,
      years: years,
      pesan: pesan,
      tanggal: tanggal,
      localname: localname,
      desa: desa,
      harga: harga,
      subtotal: subtotal,
      fotoPohon: fotoPohon,
    );
