// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponmytreesStruct extends BaseStruct {
  ResponmytreesStruct({
    int? id,
    String? idpohon,
    int? pengasuh,
    String? nama,
    int? price,
    String? cur,
    String? methode,
    String? tglAdopt,
    int? gfrom,
    String? certnum,
    int? dur,
    String? memo,
    int? admin,
    int? proses,
    String? invoice,
    String? localname,
    String? createdAt,
    String? desa,
    String? tglExp,
    String? confirm,
    String? fotoPohon,
  })  : _id = id,
        _idpohon = idpohon,
        _pengasuh = pengasuh,
        _nama = nama,
        _price = price,
        _cur = cur,
        _methode = methode,
        _tglAdopt = tglAdopt,
        _gfrom = gfrom,
        _certnum = certnum,
        _dur = dur,
        _memo = memo,
        _admin = admin,
        _proses = proses,
        _invoice = invoice,
        _localname = localname,
        _createdAt = createdAt,
        _desa = desa,
        _tglExp = tglExp,
        _confirm = confirm,
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

  // "pengasuh" field.
  int? _pengasuh;
  int get pengasuh => _pengasuh ?? 0;
  set pengasuh(int? val) => _pengasuh = val;

  void incrementPengasuh(int amount) => pengasuh = pengasuh + amount;

  bool hasPengasuh() => _pengasuh != null;

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  set nama(String? val) => _nama = val;

  bool hasNama() => _nama != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "cur" field.
  String? _cur;
  String get cur => _cur ?? '';
  set cur(String? val) => _cur = val;

  bool hasCur() => _cur != null;

  // "methode" field.
  String? _methode;
  String get methode => _methode ?? '';
  set methode(String? val) => _methode = val;

  bool hasMethode() => _methode != null;

  // "tgl_adopt" field.
  String? _tglAdopt;
  String get tglAdopt => _tglAdopt ?? '';
  set tglAdopt(String? val) => _tglAdopt = val;

  bool hasTglAdopt() => _tglAdopt != null;

  // "gfrom" field.
  int? _gfrom;
  int get gfrom => _gfrom ?? 0;
  set gfrom(int? val) => _gfrom = val;

  void incrementGfrom(int amount) => gfrom = gfrom + amount;

  bool hasGfrom() => _gfrom != null;

  // "certnum" field.
  String? _certnum;
  String get certnum => _certnum ?? '';
  set certnum(String? val) => _certnum = val;

  bool hasCertnum() => _certnum != null;

  // "dur" field.
  int? _dur;
  int get dur => _dur ?? 0;
  set dur(int? val) => _dur = val;

  void incrementDur(int amount) => dur = dur + amount;

  bool hasDur() => _dur != null;

  // "memo" field.
  String? _memo;
  String get memo => _memo ?? '';
  set memo(String? val) => _memo = val;

  bool hasMemo() => _memo != null;

  // "admin" field.
  int? _admin;
  int get admin => _admin ?? 0;
  set admin(int? val) => _admin = val;

  void incrementAdmin(int amount) => admin = admin + amount;

  bool hasAdmin() => _admin != null;

  // "proses" field.
  int? _proses;
  int get proses => _proses ?? 0;
  set proses(int? val) => _proses = val;

  void incrementProses(int amount) => proses = proses + amount;

  bool hasProses() => _proses != null;

  // "invoice" field.
  String? _invoice;
  String get invoice => _invoice ?? '';
  set invoice(String? val) => _invoice = val;

  bool hasInvoice() => _invoice != null;

  // "localname" field.
  String? _localname;
  String get localname => _localname ?? '';
  set localname(String? val) => _localname = val;

  bool hasLocalname() => _localname != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "desa" field.
  String? _desa;
  String get desa => _desa ?? '';
  set desa(String? val) => _desa = val;

  bool hasDesa() => _desa != null;

  // "tgl_exp" field.
  String? _tglExp;
  String get tglExp => _tglExp ?? '';
  set tglExp(String? val) => _tglExp = val;

  bool hasTglExp() => _tglExp != null;

  // "confirm" field.
  String? _confirm;
  String get confirm => _confirm ?? '';
  set confirm(String? val) => _confirm = val;

  bool hasConfirm() => _confirm != null;

  // "foto_pohon" field.
  String? _fotoPohon;
  String get fotoPohon => _fotoPohon ?? '';
  set fotoPohon(String? val) => _fotoPohon = val;

  bool hasFotoPohon() => _fotoPohon != null;

  static ResponmytreesStruct fromMap(Map<String, dynamic> data) =>
      ResponmytreesStruct(
        id: castToType<int>(data['id']),
        idpohon: data['idpohon'] as String?,
        pengasuh: castToType<int>(data['pengasuh']),
        nama: data['nama'] as String?,
        price: castToType<int>(data['price']),
        cur: data['cur'] as String?,
        methode: data['methode'] as String?,
        tglAdopt: data['tgl_adopt'] as String?,
        gfrom: castToType<int>(data['gfrom']),
        certnum: data['certnum'] as String?,
        dur: castToType<int>(data['dur']),
        memo: data['memo'] as String?,
        admin: castToType<int>(data['admin']),
        proses: castToType<int>(data['proses']),
        invoice: data['invoice'] as String?,
        localname: data['localname'] as String?,
        createdAt: data['created_at'] as String?,
        desa: data['desa'] as String?,
        tglExp: data['tgl_exp'] as String?,
        confirm: data['confirm'] as String?,
        fotoPohon: data['foto_pohon'] as String?,
      );

  static ResponmytreesStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponmytreesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'idpohon': _idpohon,
        'pengasuh': _pengasuh,
        'nama': _nama,
        'price': _price,
        'cur': _cur,
        'methode': _methode,
        'tgl_adopt': _tglAdopt,
        'gfrom': _gfrom,
        'certnum': _certnum,
        'dur': _dur,
        'memo': _memo,
        'admin': _admin,
        'proses': _proses,
        'invoice': _invoice,
        'localname': _localname,
        'created_at': _createdAt,
        'desa': _desa,
        'tgl_exp': _tglExp,
        'confirm': _confirm,
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
        'pengasuh': serializeParam(
          _pengasuh,
          ParamType.int,
        ),
        'nama': serializeParam(
          _nama,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'cur': serializeParam(
          _cur,
          ParamType.String,
        ),
        'methode': serializeParam(
          _methode,
          ParamType.String,
        ),
        'tgl_adopt': serializeParam(
          _tglAdopt,
          ParamType.String,
        ),
        'gfrom': serializeParam(
          _gfrom,
          ParamType.int,
        ),
        'certnum': serializeParam(
          _certnum,
          ParamType.String,
        ),
        'dur': serializeParam(
          _dur,
          ParamType.int,
        ),
        'memo': serializeParam(
          _memo,
          ParamType.String,
        ),
        'admin': serializeParam(
          _admin,
          ParamType.int,
        ),
        'proses': serializeParam(
          _proses,
          ParamType.int,
        ),
        'invoice': serializeParam(
          _invoice,
          ParamType.String,
        ),
        'localname': serializeParam(
          _localname,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'desa': serializeParam(
          _desa,
          ParamType.String,
        ),
        'tgl_exp': serializeParam(
          _tglExp,
          ParamType.String,
        ),
        'confirm': serializeParam(
          _confirm,
          ParamType.String,
        ),
        'foto_pohon': serializeParam(
          _fotoPohon,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponmytreesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponmytreesStruct(
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
        pengasuh: deserializeParam(
          data['pengasuh'],
          ParamType.int,
          false,
        ),
        nama: deserializeParam(
          data['nama'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        cur: deserializeParam(
          data['cur'],
          ParamType.String,
          false,
        ),
        methode: deserializeParam(
          data['methode'],
          ParamType.String,
          false,
        ),
        tglAdopt: deserializeParam(
          data['tgl_adopt'],
          ParamType.String,
          false,
        ),
        gfrom: deserializeParam(
          data['gfrom'],
          ParamType.int,
          false,
        ),
        certnum: deserializeParam(
          data['certnum'],
          ParamType.String,
          false,
        ),
        dur: deserializeParam(
          data['dur'],
          ParamType.int,
          false,
        ),
        memo: deserializeParam(
          data['memo'],
          ParamType.String,
          false,
        ),
        admin: deserializeParam(
          data['admin'],
          ParamType.int,
          false,
        ),
        proses: deserializeParam(
          data['proses'],
          ParamType.int,
          false,
        ),
        invoice: deserializeParam(
          data['invoice'],
          ParamType.String,
          false,
        ),
        localname: deserializeParam(
          data['localname'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        desa: deserializeParam(
          data['desa'],
          ParamType.String,
          false,
        ),
        tglExp: deserializeParam(
          data['tgl_exp'],
          ParamType.String,
          false,
        ),
        confirm: deserializeParam(
          data['confirm'],
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
  String toString() => 'ResponmytreesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponmytreesStruct &&
        id == other.id &&
        idpohon == other.idpohon &&
        pengasuh == other.pengasuh &&
        nama == other.nama &&
        price == other.price &&
        cur == other.cur &&
        methode == other.methode &&
        tglAdopt == other.tglAdopt &&
        gfrom == other.gfrom &&
        certnum == other.certnum &&
        dur == other.dur &&
        memo == other.memo &&
        admin == other.admin &&
        proses == other.proses &&
        invoice == other.invoice &&
        localname == other.localname &&
        createdAt == other.createdAt &&
        desa == other.desa &&
        tglExp == other.tglExp &&
        confirm == other.confirm &&
        fotoPohon == other.fotoPohon;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        idpohon,
        pengasuh,
        nama,
        price,
        cur,
        methode,
        tglAdopt,
        gfrom,
        certnum,
        dur,
        memo,
        admin,
        proses,
        invoice,
        localname,
        createdAt,
        desa,
        tglExp,
        confirm,
        fotoPohon
      ]);
}

ResponmytreesStruct createResponmytreesStruct({
  int? id,
  String? idpohon,
  int? pengasuh,
  String? nama,
  int? price,
  String? cur,
  String? methode,
  String? tglAdopt,
  int? gfrom,
  String? certnum,
  int? dur,
  String? memo,
  int? admin,
  int? proses,
  String? invoice,
  String? localname,
  String? createdAt,
  String? desa,
  String? tglExp,
  String? confirm,
  String? fotoPohon,
}) =>
    ResponmytreesStruct(
      id: id,
      idpohon: idpohon,
      pengasuh: pengasuh,
      nama: nama,
      price: price,
      cur: cur,
      methode: methode,
      tglAdopt: tglAdopt,
      gfrom: gfrom,
      certnum: certnum,
      dur: dur,
      memo: memo,
      admin: admin,
      proses: proses,
      invoice: invoice,
      localname: localname,
      createdAt: createdAt,
      desa: desa,
      tglExp: tglExp,
      confirm: confirm,
      fotoPohon: fotoPohon,
    );
