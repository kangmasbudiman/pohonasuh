// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponCUstomerOrderStruct extends BaseStruct {
  ResponCUstomerOrderStruct({
    int? id,
    String? idpohon,
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
    String? confirmasiBy,
    String? confirmasi,
    String? localname,
    String? createdAt,
    String? fotoPohon,
    String? latitude,
    String? longitude,
    int? diameter,
    int? tinggi,
    int? keliling,
    String? desa,
    int? confirmasiid,
    String? fotopembayaran,
    int? pengasuh,
  })  : _id = id,
        _idpohon = idpohon,
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
        _confirmasiBy = confirmasiBy,
        _confirmasi = confirmasi,
        _localname = localname,
        _createdAt = createdAt,
        _fotoPohon = fotoPohon,
        _latitude = latitude,
        _longitude = longitude,
        _diameter = diameter,
        _tinggi = tinggi,
        _keliling = keliling,
        _desa = desa,
        _confirmasiid = confirmasiid,
        _fotopembayaran = fotopembayaran,
        _pengasuh = pengasuh;

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

  // "confirmasiBy" field.
  String? _confirmasiBy;
  String get confirmasiBy => _confirmasiBy ?? '';
  set confirmasiBy(String? val) => _confirmasiBy = val;

  bool hasConfirmasiBy() => _confirmasiBy != null;

  // "confirmasi" field.
  String? _confirmasi;
  String get confirmasi => _confirmasi ?? '';
  set confirmasi(String? val) => _confirmasi = val;

  bool hasConfirmasi() => _confirmasi != null;

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

  // "foto_pohon" field.
  String? _fotoPohon;
  String get fotoPohon => _fotoPohon ?? '';
  set fotoPohon(String? val) => _fotoPohon = val;

  bool hasFotoPohon() => _fotoPohon != null;

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

  // "diameter" field.
  int? _diameter;
  int get diameter => _diameter ?? 0;
  set diameter(int? val) => _diameter = val;

  void incrementDiameter(int amount) => diameter = diameter + amount;

  bool hasDiameter() => _diameter != null;

  // "tinggi" field.
  int? _tinggi;
  int get tinggi => _tinggi ?? 0;
  set tinggi(int? val) => _tinggi = val;

  void incrementTinggi(int amount) => tinggi = tinggi + amount;

  bool hasTinggi() => _tinggi != null;

  // "keliling" field.
  int? _keliling;
  int get keliling => _keliling ?? 0;
  set keliling(int? val) => _keliling = val;

  void incrementKeliling(int amount) => keliling = keliling + amount;

  bool hasKeliling() => _keliling != null;

  // "desa" field.
  String? _desa;
  String get desa => _desa ?? '';
  set desa(String? val) => _desa = val;

  bool hasDesa() => _desa != null;

  // "confirmasiid" field.
  int? _confirmasiid;
  int get confirmasiid => _confirmasiid ?? 0;
  set confirmasiid(int? val) => _confirmasiid = val;

  void incrementConfirmasiid(int amount) =>
      confirmasiid = confirmasiid + amount;

  bool hasConfirmasiid() => _confirmasiid != null;

  // "fotopembayaran" field.
  String? _fotopembayaran;
  String get fotopembayaran => _fotopembayaran ?? '';
  set fotopembayaran(String? val) => _fotopembayaran = val;

  bool hasFotopembayaran() => _fotopembayaran != null;

  // "pengasuh" field.
  int? _pengasuh;
  int get pengasuh => _pengasuh ?? 0;
  set pengasuh(int? val) => _pengasuh = val;

  void incrementPengasuh(int amount) => pengasuh = pengasuh + amount;

  bool hasPengasuh() => _pengasuh != null;

  static ResponCUstomerOrderStruct fromMap(Map<String, dynamic> data) =>
      ResponCUstomerOrderStruct(
        id: castToType<int>(data['id']),
        idpohon: data['idpohon'] as String?,
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
        confirmasiBy: data['confirmasiBy'] as String?,
        confirmasi: data['confirmasi'] as String?,
        localname: data['localname'] as String?,
        createdAt: data['created_at'] as String?,
        fotoPohon: data['foto_pohon'] as String?,
        latitude: data['latitude'] as String?,
        longitude: data['longitude'] as String?,
        diameter: castToType<int>(data['diameter']),
        tinggi: castToType<int>(data['tinggi']),
        keliling: castToType<int>(data['keliling']),
        desa: data['desa'] as String?,
        confirmasiid: castToType<int>(data['confirmasiid']),
        fotopembayaran: data['fotopembayaran'] as String?,
        pengasuh: castToType<int>(data['pengasuh']),
      );

  static ResponCUstomerOrderStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponCUstomerOrderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'idpohon': _idpohon,
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
        'confirmasiBy': _confirmasiBy,
        'confirmasi': _confirmasi,
        'localname': _localname,
        'created_at': _createdAt,
        'foto_pohon': _fotoPohon,
        'latitude': _latitude,
        'longitude': _longitude,
        'diameter': _diameter,
        'tinggi': _tinggi,
        'keliling': _keliling,
        'desa': _desa,
        'confirmasiid': _confirmasiid,
        'fotopembayaran': _fotopembayaran,
        'pengasuh': _pengasuh,
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
        'confirmasiBy': serializeParam(
          _confirmasiBy,
          ParamType.String,
        ),
        'confirmasi': serializeParam(
          _confirmasi,
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
        'foto_pohon': serializeParam(
          _fotoPohon,
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
        'diameter': serializeParam(
          _diameter,
          ParamType.int,
        ),
        'tinggi': serializeParam(
          _tinggi,
          ParamType.int,
        ),
        'keliling': serializeParam(
          _keliling,
          ParamType.int,
        ),
        'desa': serializeParam(
          _desa,
          ParamType.String,
        ),
        'confirmasiid': serializeParam(
          _confirmasiid,
          ParamType.int,
        ),
        'fotopembayaran': serializeParam(
          _fotopembayaran,
          ParamType.String,
        ),
        'pengasuh': serializeParam(
          _pengasuh,
          ParamType.int,
        ),
      }.withoutNulls;

  static ResponCUstomerOrderStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ResponCUstomerOrderStruct(
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
        confirmasiBy: deserializeParam(
          data['confirmasiBy'],
          ParamType.String,
          false,
        ),
        confirmasi: deserializeParam(
          data['confirmasi'],
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
        fotoPohon: deserializeParam(
          data['foto_pohon'],
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
        diameter: deserializeParam(
          data['diameter'],
          ParamType.int,
          false,
        ),
        tinggi: deserializeParam(
          data['tinggi'],
          ParamType.int,
          false,
        ),
        keliling: deserializeParam(
          data['keliling'],
          ParamType.int,
          false,
        ),
        desa: deserializeParam(
          data['desa'],
          ParamType.String,
          false,
        ),
        confirmasiid: deserializeParam(
          data['confirmasiid'],
          ParamType.int,
          false,
        ),
        fotopembayaran: deserializeParam(
          data['fotopembayaran'],
          ParamType.String,
          false,
        ),
        pengasuh: deserializeParam(
          data['pengasuh'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ResponCUstomerOrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponCUstomerOrderStruct &&
        id == other.id &&
        idpohon == other.idpohon &&
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
        confirmasiBy == other.confirmasiBy &&
        confirmasi == other.confirmasi &&
        localname == other.localname &&
        createdAt == other.createdAt &&
        fotoPohon == other.fotoPohon &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        diameter == other.diameter &&
        tinggi == other.tinggi &&
        keliling == other.keliling &&
        desa == other.desa &&
        confirmasiid == other.confirmasiid &&
        fotopembayaran == other.fotopembayaran &&
        pengasuh == other.pengasuh;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        idpohon,
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
        confirmasiBy,
        confirmasi,
        localname,
        createdAt,
        fotoPohon,
        latitude,
        longitude,
        diameter,
        tinggi,
        keliling,
        desa,
        confirmasiid,
        fotopembayaran,
        pengasuh
      ]);
}

ResponCUstomerOrderStruct createResponCUstomerOrderStruct({
  int? id,
  String? idpohon,
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
  String? confirmasiBy,
  String? confirmasi,
  String? localname,
  String? createdAt,
  String? fotoPohon,
  String? latitude,
  String? longitude,
  int? diameter,
  int? tinggi,
  int? keliling,
  String? desa,
  int? confirmasiid,
  String? fotopembayaran,
  int? pengasuh,
}) =>
    ResponCUstomerOrderStruct(
      id: id,
      idpohon: idpohon,
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
      confirmasiBy: confirmasiBy,
      confirmasi: confirmasi,
      localname: localname,
      createdAt: createdAt,
      fotoPohon: fotoPohon,
      latitude: latitude,
      longitude: longitude,
      diameter: diameter,
      tinggi: tinggi,
      keliling: keliling,
      desa: desa,
      confirmasiid: confirmasiid,
      fotopembayaran: fotopembayaran,
      pengasuh: pengasuh,
    );
