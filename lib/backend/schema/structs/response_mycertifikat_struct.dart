// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseMycertifikatStruct extends BaseStruct {
  ResponseMycertifikatStruct({
    int? id,
    String? invoice,
    int? price,
    String? tanggal,
    int? jmlPohon,
    String? foto,
    String? confirmation,
    String? tglExp,
    String? desa,
    String? memo,
    String? tglAdopt,
    String? nama,
    String? certnum,
  })  : _id = id,
        _invoice = invoice,
        _price = price,
        _tanggal = tanggal,
        _jmlPohon = jmlPohon,
        _foto = foto,
        _confirmation = confirmation,
        _tglExp = tglExp,
        _desa = desa,
        _memo = memo,
        _tglAdopt = tglAdopt,
        _nama = nama,
        _certnum = certnum;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "invoice" field.
  String? _invoice;
  String get invoice => _invoice ?? '';
  set invoice(String? val) => _invoice = val;

  bool hasInvoice() => _invoice != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "tanggal" field.
  String? _tanggal;
  String get tanggal => _tanggal ?? '';
  set tanggal(String? val) => _tanggal = val;

  bool hasTanggal() => _tanggal != null;

  // "jml_pohon" field.
  int? _jmlPohon;
  int get jmlPohon => _jmlPohon ?? 0;
  set jmlPohon(int? val) => _jmlPohon = val;

  void incrementJmlPohon(int amount) => jmlPohon = jmlPohon + amount;

  bool hasJmlPohon() => _jmlPohon != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  // "confirmation" field.
  String? _confirmation;
  String get confirmation => _confirmation ?? '';
  set confirmation(String? val) => _confirmation = val;

  bool hasConfirmation() => _confirmation != null;

  // "tgl_exp" field.
  String? _tglExp;
  String get tglExp => _tglExp ?? '';
  set tglExp(String? val) => _tglExp = val;

  bool hasTglExp() => _tglExp != null;

  // "desa" field.
  String? _desa;
  String get desa => _desa ?? '';
  set desa(String? val) => _desa = val;

  bool hasDesa() => _desa != null;

  // "memo" field.
  String? _memo;
  String get memo => _memo ?? '';
  set memo(String? val) => _memo = val;

  bool hasMemo() => _memo != null;

  // "tgl_adopt" field.
  String? _tglAdopt;
  String get tglAdopt => _tglAdopt ?? '';
  set tglAdopt(String? val) => _tglAdopt = val;

  bool hasTglAdopt() => _tglAdopt != null;

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  set nama(String? val) => _nama = val;

  bool hasNama() => _nama != null;

  // "certnum" field.
  String? _certnum;
  String get certnum => _certnum ?? '';
  set certnum(String? val) => _certnum = val;

  bool hasCertnum() => _certnum != null;

  static ResponseMycertifikatStruct fromMap(Map<String, dynamic> data) =>
      ResponseMycertifikatStruct(
        id: castToType<int>(data['id']),
        invoice: data['invoice'] as String?,
        price: castToType<int>(data['price']),
        tanggal: data['tanggal'] as String?,
        jmlPohon: castToType<int>(data['jml_pohon']),
        foto: data['foto'] as String?,
        confirmation: data['confirmation'] as String?,
        tglExp: data['tgl_exp'] as String?,
        desa: data['desa'] as String?,
        memo: data['memo'] as String?,
        tglAdopt: data['tgl_adopt'] as String?,
        nama: data['nama'] as String?,
        certnum: data['certnum'] as String?,
      );

  static ResponseMycertifikatStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseMycertifikatStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'invoice': _invoice,
        'price': _price,
        'tanggal': _tanggal,
        'jml_pohon': _jmlPohon,
        'foto': _foto,
        'confirmation': _confirmation,
        'tgl_exp': _tglExp,
        'desa': _desa,
        'memo': _memo,
        'tgl_adopt': _tglAdopt,
        'nama': _nama,
        'certnum': _certnum,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'invoice': serializeParam(
          _invoice,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'tanggal': serializeParam(
          _tanggal,
          ParamType.String,
        ),
        'jml_pohon': serializeParam(
          _jmlPohon,
          ParamType.int,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'confirmation': serializeParam(
          _confirmation,
          ParamType.String,
        ),
        'tgl_exp': serializeParam(
          _tglExp,
          ParamType.String,
        ),
        'desa': serializeParam(
          _desa,
          ParamType.String,
        ),
        'memo': serializeParam(
          _memo,
          ParamType.String,
        ),
        'tgl_adopt': serializeParam(
          _tglAdopt,
          ParamType.String,
        ),
        'nama': serializeParam(
          _nama,
          ParamType.String,
        ),
        'certnum': serializeParam(
          _certnum,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponseMycertifikatStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ResponseMycertifikatStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        invoice: deserializeParam(
          data['invoice'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        tanggal: deserializeParam(
          data['tanggal'],
          ParamType.String,
          false,
        ),
        jmlPohon: deserializeParam(
          data['jml_pohon'],
          ParamType.int,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
        confirmation: deserializeParam(
          data['confirmation'],
          ParamType.String,
          false,
        ),
        tglExp: deserializeParam(
          data['tgl_exp'],
          ParamType.String,
          false,
        ),
        desa: deserializeParam(
          data['desa'],
          ParamType.String,
          false,
        ),
        memo: deserializeParam(
          data['memo'],
          ParamType.String,
          false,
        ),
        tglAdopt: deserializeParam(
          data['tgl_adopt'],
          ParamType.String,
          false,
        ),
        nama: deserializeParam(
          data['nama'],
          ParamType.String,
          false,
        ),
        certnum: deserializeParam(
          data['certnum'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResponseMycertifikatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseMycertifikatStruct &&
        id == other.id &&
        invoice == other.invoice &&
        price == other.price &&
        tanggal == other.tanggal &&
        jmlPohon == other.jmlPohon &&
        foto == other.foto &&
        confirmation == other.confirmation &&
        tglExp == other.tglExp &&
        desa == other.desa &&
        memo == other.memo &&
        tglAdopt == other.tglAdopt &&
        nama == other.nama &&
        certnum == other.certnum;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        invoice,
        price,
        tanggal,
        jmlPohon,
        foto,
        confirmation,
        tglExp,
        desa,
        memo,
        tglAdopt,
        nama,
        certnum
      ]);
}

ResponseMycertifikatStruct createResponseMycertifikatStruct({
  int? id,
  String? invoice,
  int? price,
  String? tanggal,
  int? jmlPohon,
  String? foto,
  String? confirmation,
  String? tglExp,
  String? desa,
  String? memo,
  String? tglAdopt,
  String? nama,
  String? certnum,
}) =>
    ResponseMycertifikatStruct(
      id: id,
      invoice: invoice,
      price: price,
      tanggal: tanggal,
      jmlPohon: jmlPohon,
      foto: foto,
      confirmation: confirmation,
      tglExp: tglExp,
      desa: desa,
      memo: memo,
      tglAdopt: tglAdopt,
      nama: nama,
      certnum: certnum,
    );
