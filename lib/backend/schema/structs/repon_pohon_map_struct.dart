// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReponPohonMapStruct extends BaseStruct {
  ReponPohonMapStruct({
    int? id,
    String? latitude,
    String? longitude,
    String? desa,
    String? idpohon,
    String? species,
    String? family,
    String? localname,
    String? status,
    String? jenis,
    int? diameter,
    int? tinggi,
    int? keliling,
    int? dpl,
    String? slope,
    String? manfaat,
    String? soil,
    String? surveyor,
    String? tglSurvey,
    String? fotografer,
    int? dilihat,
    String? hit,
    String? beku,
    String? score,
    String? tglPesan,
    String? tglAdopt,
    String? price,
    String? cur,
    String? adopted,
    int? dur,
    String? methode,
    String? pengasuh,
    int? gfrom,
    String? nama,
    String? catatan,
    int? admin,
    int? proses,
    String? keterangan,
    String? qrcode,
    int? harga,
    int? asl,
    String? fotoPohon,
    String? tglExp,
    int? highlight,
    LatLng? location,
  })  : _id = id,
        _latitude = latitude,
        _longitude = longitude,
        _desa = desa,
        _idpohon = idpohon,
        _species = species,
        _family = family,
        _localname = localname,
        _status = status,
        _jenis = jenis,
        _diameter = diameter,
        _tinggi = tinggi,
        _keliling = keliling,
        _dpl = dpl,
        _slope = slope,
        _manfaat = manfaat,
        _soil = soil,
        _surveyor = surveyor,
        _tglSurvey = tglSurvey,
        _fotografer = fotografer,
        _dilihat = dilihat,
        _hit = hit,
        _beku = beku,
        _score = score,
        _tglPesan = tglPesan,
        _tglAdopt = tglAdopt,
        _price = price,
        _cur = cur,
        _adopted = adopted,
        _dur = dur,
        _methode = methode,
        _pengasuh = pengasuh,
        _gfrom = gfrom,
        _nama = nama,
        _catatan = catatan,
        _admin = admin,
        _proses = proses,
        _keterangan = keterangan,
        _qrcode = qrcode,
        _harga = harga,
        _asl = asl,
        _fotoPohon = fotoPohon,
        _tglExp = tglExp,
        _highlight = highlight,
        _location = location;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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

  // "desa" field.
  String? _desa;
  String get desa => _desa ?? '';
  set desa(String? val) => _desa = val;

  bool hasDesa() => _desa != null;

  // "idpohon" field.
  String? _idpohon;
  String get idpohon => _idpohon ?? '';
  set idpohon(String? val) => _idpohon = val;

  bool hasIdpohon() => _idpohon != null;

  // "species" field.
  String? _species;
  String get species => _species ?? '';
  set species(String? val) => _species = val;

  bool hasSpecies() => _species != null;

  // "family" field.
  String? _family;
  String get family => _family ?? '';
  set family(String? val) => _family = val;

  bool hasFamily() => _family != null;

  // "localname" field.
  String? _localname;
  String get localname => _localname ?? '';
  set localname(String? val) => _localname = val;

  bool hasLocalname() => _localname != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "jenis" field.
  String? _jenis;
  String get jenis => _jenis ?? '';
  set jenis(String? val) => _jenis = val;

  bool hasJenis() => _jenis != null;

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

  // "dpl" field.
  int? _dpl;
  int get dpl => _dpl ?? 0;
  set dpl(int? val) => _dpl = val;

  void incrementDpl(int amount) => dpl = dpl + amount;

  bool hasDpl() => _dpl != null;

  // "slope" field.
  String? _slope;
  String get slope => _slope ?? '';
  set slope(String? val) => _slope = val;

  bool hasSlope() => _slope != null;

  // "manfaat" field.
  String? _manfaat;
  String get manfaat => _manfaat ?? '';
  set manfaat(String? val) => _manfaat = val;

  bool hasManfaat() => _manfaat != null;

  // "soil" field.
  String? _soil;
  String get soil => _soil ?? '';
  set soil(String? val) => _soil = val;

  bool hasSoil() => _soil != null;

  // "surveyor" field.
  String? _surveyor;
  String get surveyor => _surveyor ?? '';
  set surveyor(String? val) => _surveyor = val;

  bool hasSurveyor() => _surveyor != null;

  // "tgl_survey" field.
  String? _tglSurvey;
  String get tglSurvey => _tglSurvey ?? '';
  set tglSurvey(String? val) => _tglSurvey = val;

  bool hasTglSurvey() => _tglSurvey != null;

  // "fotografer" field.
  String? _fotografer;
  String get fotografer => _fotografer ?? '';
  set fotografer(String? val) => _fotografer = val;

  bool hasFotografer() => _fotografer != null;

  // "dilihat" field.
  int? _dilihat;
  int get dilihat => _dilihat ?? 0;
  set dilihat(int? val) => _dilihat = val;

  void incrementDilihat(int amount) => dilihat = dilihat + amount;

  bool hasDilihat() => _dilihat != null;

  // "hit" field.
  String? _hit;
  String get hit => _hit ?? '';
  set hit(String? val) => _hit = val;

  bool hasHit() => _hit != null;

  // "beku" field.
  String? _beku;
  String get beku => _beku ?? '';
  set beku(String? val) => _beku = val;

  bool hasBeku() => _beku != null;

  // "score" field.
  String? _score;
  String get score => _score ?? '';
  set score(String? val) => _score = val;

  bool hasScore() => _score != null;

  // "tgl_pesan" field.
  String? _tglPesan;
  String get tglPesan => _tglPesan ?? '';
  set tglPesan(String? val) => _tglPesan = val;

  bool hasTglPesan() => _tglPesan != null;

  // "tgl_adopt" field.
  String? _tglAdopt;
  String get tglAdopt => _tglAdopt ?? '';
  set tglAdopt(String? val) => _tglAdopt = val;

  bool hasTglAdopt() => _tglAdopt != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "cur" field.
  String? _cur;
  String get cur => _cur ?? '';
  set cur(String? val) => _cur = val;

  bool hasCur() => _cur != null;

  // "adopted" field.
  String? _adopted;
  String get adopted => _adopted ?? '';
  set adopted(String? val) => _adopted = val;

  bool hasAdopted() => _adopted != null;

  // "dur" field.
  int? _dur;
  int get dur => _dur ?? 0;
  set dur(int? val) => _dur = val;

  void incrementDur(int amount) => dur = dur + amount;

  bool hasDur() => _dur != null;

  // "methode" field.
  String? _methode;
  String get methode => _methode ?? '';
  set methode(String? val) => _methode = val;

  bool hasMethode() => _methode != null;

  // "pengasuh" field.
  String? _pengasuh;
  String get pengasuh => _pengasuh ?? '';
  set pengasuh(String? val) => _pengasuh = val;

  bool hasPengasuh() => _pengasuh != null;

  // "gfrom" field.
  int? _gfrom;
  int get gfrom => _gfrom ?? 0;
  set gfrom(int? val) => _gfrom = val;

  void incrementGfrom(int amount) => gfrom = gfrom + amount;

  bool hasGfrom() => _gfrom != null;

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  set nama(String? val) => _nama = val;

  bool hasNama() => _nama != null;

  // "catatan" field.
  String? _catatan;
  String get catatan => _catatan ?? '';
  set catatan(String? val) => _catatan = val;

  bool hasCatatan() => _catatan != null;

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

  // "keterangan" field.
  String? _keterangan;
  String get keterangan => _keterangan ?? '';
  set keterangan(String? val) => _keterangan = val;

  bool hasKeterangan() => _keterangan != null;

  // "qrcode" field.
  String? _qrcode;
  String get qrcode => _qrcode ?? '';
  set qrcode(String? val) => _qrcode = val;

  bool hasQrcode() => _qrcode != null;

  // "harga" field.
  int? _harga;
  int get harga => _harga ?? 0;
  set harga(int? val) => _harga = val;

  void incrementHarga(int amount) => harga = harga + amount;

  bool hasHarga() => _harga != null;

  // "asl" field.
  int? _asl;
  int get asl => _asl ?? 0;
  set asl(int? val) => _asl = val;

  void incrementAsl(int amount) => asl = asl + amount;

  bool hasAsl() => _asl != null;

  // "foto_pohon" field.
  String? _fotoPohon;
  String get fotoPohon => _fotoPohon ?? '';
  set fotoPohon(String? val) => _fotoPohon = val;

  bool hasFotoPohon() => _fotoPohon != null;

  // "tgl_exp" field.
  String? _tglExp;
  String get tglExp => _tglExp ?? '';
  set tglExp(String? val) => _tglExp = val;

  bool hasTglExp() => _tglExp != null;

  // "highlight" field.
  int? _highlight;
  int get highlight => _highlight ?? 0;
  set highlight(int? val) => _highlight = val;

  void incrementHighlight(int amount) => highlight = highlight + amount;

  bool hasHighlight() => _highlight != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  set location(LatLng? val) => _location = val;

  bool hasLocation() => _location != null;

  static ReponPohonMapStruct fromMap(Map<String, dynamic> data) =>
      ReponPohonMapStruct(
        id: castToType<int>(data['id']),
        latitude: data['latitude'] as String?,
        longitude: data['longitude'] as String?,
        desa: data['desa'] as String?,
        idpohon: data['idpohon'] as String?,
        species: data['species'] as String?,
        family: data['family'] as String?,
        localname: data['localname'] as String?,
        status: data['status'] as String?,
        jenis: data['jenis'] as String?,
        diameter: castToType<int>(data['diameter']),
        tinggi: castToType<int>(data['tinggi']),
        keliling: castToType<int>(data['keliling']),
        dpl: castToType<int>(data['dpl']),
        slope: data['slope'] as String?,
        manfaat: data['manfaat'] as String?,
        soil: data['soil'] as String?,
        surveyor: data['surveyor'] as String?,
        tglSurvey: data['tgl_survey'] as String?,
        fotografer: data['fotografer'] as String?,
        dilihat: castToType<int>(data['dilihat']),
        hit: data['hit'] as String?,
        beku: data['beku'] as String?,
        score: data['score'] as String?,
        tglPesan: data['tgl_pesan'] as String?,
        tglAdopt: data['tgl_adopt'] as String?,
        price: data['price'] as String?,
        cur: data['cur'] as String?,
        adopted: data['adopted'] as String?,
        dur: castToType<int>(data['dur']),
        methode: data['methode'] as String?,
        pengasuh: data['pengasuh'] as String?,
        gfrom: castToType<int>(data['gfrom']),
        nama: data['nama'] as String?,
        catatan: data['catatan'] as String?,
        admin: castToType<int>(data['admin']),
        proses: castToType<int>(data['proses']),
        keterangan: data['keterangan'] as String?,
        qrcode: data['qrcode'] as String?,
        harga: castToType<int>(data['harga']),
        asl: castToType<int>(data['asl']),
        fotoPohon: data['foto_pohon'] as String?,
        tglExp: data['tgl_exp'] as String?,
        highlight: castToType<int>(data['highlight']),
        location: data['location'] as LatLng?,
      );

  static ReponPohonMapStruct? maybeFromMap(dynamic data) => data is Map
      ? ReponPohonMapStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'latitude': _latitude,
        'longitude': _longitude,
        'desa': _desa,
        'idpohon': _idpohon,
        'species': _species,
        'family': _family,
        'localname': _localname,
        'status': _status,
        'jenis': _jenis,
        'diameter': _diameter,
        'tinggi': _tinggi,
        'keliling': _keliling,
        'dpl': _dpl,
        'slope': _slope,
        'manfaat': _manfaat,
        'soil': _soil,
        'surveyor': _surveyor,
        'tgl_survey': _tglSurvey,
        'fotografer': _fotografer,
        'dilihat': _dilihat,
        'hit': _hit,
        'beku': _beku,
        'score': _score,
        'tgl_pesan': _tglPesan,
        'tgl_adopt': _tglAdopt,
        'price': _price,
        'cur': _cur,
        'adopted': _adopted,
        'dur': _dur,
        'methode': _methode,
        'pengasuh': _pengasuh,
        'gfrom': _gfrom,
        'nama': _nama,
        'catatan': _catatan,
        'admin': _admin,
        'proses': _proses,
        'keterangan': _keterangan,
        'qrcode': _qrcode,
        'harga': _harga,
        'asl': _asl,
        'foto_pohon': _fotoPohon,
        'tgl_exp': _tglExp,
        'highlight': _highlight,
        'location': _location,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.String,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.String,
        ),
        'desa': serializeParam(
          _desa,
          ParamType.String,
        ),
        'idpohon': serializeParam(
          _idpohon,
          ParamType.String,
        ),
        'species': serializeParam(
          _species,
          ParamType.String,
        ),
        'family': serializeParam(
          _family,
          ParamType.String,
        ),
        'localname': serializeParam(
          _localname,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'jenis': serializeParam(
          _jenis,
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
        'dpl': serializeParam(
          _dpl,
          ParamType.int,
        ),
        'slope': serializeParam(
          _slope,
          ParamType.String,
        ),
        'manfaat': serializeParam(
          _manfaat,
          ParamType.String,
        ),
        'soil': serializeParam(
          _soil,
          ParamType.String,
        ),
        'surveyor': serializeParam(
          _surveyor,
          ParamType.String,
        ),
        'tgl_survey': serializeParam(
          _tglSurvey,
          ParamType.String,
        ),
        'fotografer': serializeParam(
          _fotografer,
          ParamType.String,
        ),
        'dilihat': serializeParam(
          _dilihat,
          ParamType.int,
        ),
        'hit': serializeParam(
          _hit,
          ParamType.String,
        ),
        'beku': serializeParam(
          _beku,
          ParamType.String,
        ),
        'score': serializeParam(
          _score,
          ParamType.String,
        ),
        'tgl_pesan': serializeParam(
          _tglPesan,
          ParamType.String,
        ),
        'tgl_adopt': serializeParam(
          _tglAdopt,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
        'cur': serializeParam(
          _cur,
          ParamType.String,
        ),
        'adopted': serializeParam(
          _adopted,
          ParamType.String,
        ),
        'dur': serializeParam(
          _dur,
          ParamType.int,
        ),
        'methode': serializeParam(
          _methode,
          ParamType.String,
        ),
        'pengasuh': serializeParam(
          _pengasuh,
          ParamType.String,
        ),
        'gfrom': serializeParam(
          _gfrom,
          ParamType.int,
        ),
        'nama': serializeParam(
          _nama,
          ParamType.String,
        ),
        'catatan': serializeParam(
          _catatan,
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
        'keterangan': serializeParam(
          _keterangan,
          ParamType.String,
        ),
        'qrcode': serializeParam(
          _qrcode,
          ParamType.String,
        ),
        'harga': serializeParam(
          _harga,
          ParamType.int,
        ),
        'asl': serializeParam(
          _asl,
          ParamType.int,
        ),
        'foto_pohon': serializeParam(
          _fotoPohon,
          ParamType.String,
        ),
        'tgl_exp': serializeParam(
          _tglExp,
          ParamType.String,
        ),
        'highlight': serializeParam(
          _highlight,
          ParamType.int,
        ),
        'location': serializeParam(
          _location,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static ReponPohonMapStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReponPohonMapStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
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
        desa: deserializeParam(
          data['desa'],
          ParamType.String,
          false,
        ),
        idpohon: deserializeParam(
          data['idpohon'],
          ParamType.String,
          false,
        ),
        species: deserializeParam(
          data['species'],
          ParamType.String,
          false,
        ),
        family: deserializeParam(
          data['family'],
          ParamType.String,
          false,
        ),
        localname: deserializeParam(
          data['localname'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        jenis: deserializeParam(
          data['jenis'],
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
        dpl: deserializeParam(
          data['dpl'],
          ParamType.int,
          false,
        ),
        slope: deserializeParam(
          data['slope'],
          ParamType.String,
          false,
        ),
        manfaat: deserializeParam(
          data['manfaat'],
          ParamType.String,
          false,
        ),
        soil: deserializeParam(
          data['soil'],
          ParamType.String,
          false,
        ),
        surveyor: deserializeParam(
          data['surveyor'],
          ParamType.String,
          false,
        ),
        tglSurvey: deserializeParam(
          data['tgl_survey'],
          ParamType.String,
          false,
        ),
        fotografer: deserializeParam(
          data['fotografer'],
          ParamType.String,
          false,
        ),
        dilihat: deserializeParam(
          data['dilihat'],
          ParamType.int,
          false,
        ),
        hit: deserializeParam(
          data['hit'],
          ParamType.String,
          false,
        ),
        beku: deserializeParam(
          data['beku'],
          ParamType.String,
          false,
        ),
        score: deserializeParam(
          data['score'],
          ParamType.String,
          false,
        ),
        tglPesan: deserializeParam(
          data['tgl_pesan'],
          ParamType.String,
          false,
        ),
        tglAdopt: deserializeParam(
          data['tgl_adopt'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
        cur: deserializeParam(
          data['cur'],
          ParamType.String,
          false,
        ),
        adopted: deserializeParam(
          data['adopted'],
          ParamType.String,
          false,
        ),
        dur: deserializeParam(
          data['dur'],
          ParamType.int,
          false,
        ),
        methode: deserializeParam(
          data['methode'],
          ParamType.String,
          false,
        ),
        pengasuh: deserializeParam(
          data['pengasuh'],
          ParamType.String,
          false,
        ),
        gfrom: deserializeParam(
          data['gfrom'],
          ParamType.int,
          false,
        ),
        nama: deserializeParam(
          data['nama'],
          ParamType.String,
          false,
        ),
        catatan: deserializeParam(
          data['catatan'],
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
        keterangan: deserializeParam(
          data['keterangan'],
          ParamType.String,
          false,
        ),
        qrcode: deserializeParam(
          data['qrcode'],
          ParamType.String,
          false,
        ),
        harga: deserializeParam(
          data['harga'],
          ParamType.int,
          false,
        ),
        asl: deserializeParam(
          data['asl'],
          ParamType.int,
          false,
        ),
        fotoPohon: deserializeParam(
          data['foto_pohon'],
          ParamType.String,
          false,
        ),
        tglExp: deserializeParam(
          data['tgl_exp'],
          ParamType.String,
          false,
        ),
        highlight: deserializeParam(
          data['highlight'],
          ParamType.int,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'ReponPohonMapStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReponPohonMapStruct &&
        id == other.id &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        desa == other.desa &&
        idpohon == other.idpohon &&
        species == other.species &&
        family == other.family &&
        localname == other.localname &&
        status == other.status &&
        jenis == other.jenis &&
        diameter == other.diameter &&
        tinggi == other.tinggi &&
        keliling == other.keliling &&
        dpl == other.dpl &&
        slope == other.slope &&
        manfaat == other.manfaat &&
        soil == other.soil &&
        surveyor == other.surveyor &&
        tglSurvey == other.tglSurvey &&
        fotografer == other.fotografer &&
        dilihat == other.dilihat &&
        hit == other.hit &&
        beku == other.beku &&
        score == other.score &&
        tglPesan == other.tglPesan &&
        tglAdopt == other.tglAdopt &&
        price == other.price &&
        cur == other.cur &&
        adopted == other.adopted &&
        dur == other.dur &&
        methode == other.methode &&
        pengasuh == other.pengasuh &&
        gfrom == other.gfrom &&
        nama == other.nama &&
        catatan == other.catatan &&
        admin == other.admin &&
        proses == other.proses &&
        keterangan == other.keterangan &&
        qrcode == other.qrcode &&
        harga == other.harga &&
        asl == other.asl &&
        fotoPohon == other.fotoPohon &&
        tglExp == other.tglExp &&
        highlight == other.highlight &&
        location == other.location;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        latitude,
        longitude,
        desa,
        idpohon,
        species,
        family,
        localname,
        status,
        jenis,
        diameter,
        tinggi,
        keliling,
        dpl,
        slope,
        manfaat,
        soil,
        surveyor,
        tglSurvey,
        fotografer,
        dilihat,
        hit,
        beku,
        score,
        tglPesan,
        tglAdopt,
        price,
        cur,
        adopted,
        dur,
        methode,
        pengasuh,
        gfrom,
        nama,
        catatan,
        admin,
        proses,
        keterangan,
        qrcode,
        harga,
        asl,
        fotoPohon,
        tglExp,
        highlight,
        location
      ]);
}

ReponPohonMapStruct createReponPohonMapStruct({
  int? id,
  String? latitude,
  String? longitude,
  String? desa,
  String? idpohon,
  String? species,
  String? family,
  String? localname,
  String? status,
  String? jenis,
  int? diameter,
  int? tinggi,
  int? keliling,
  int? dpl,
  String? slope,
  String? manfaat,
  String? soil,
  String? surveyor,
  String? tglSurvey,
  String? fotografer,
  int? dilihat,
  String? hit,
  String? beku,
  String? score,
  String? tglPesan,
  String? tglAdopt,
  String? price,
  String? cur,
  String? adopted,
  int? dur,
  String? methode,
  String? pengasuh,
  int? gfrom,
  String? nama,
  String? catatan,
  int? admin,
  int? proses,
  String? keterangan,
  String? qrcode,
  int? harga,
  int? asl,
  String? fotoPohon,
  String? tglExp,
  int? highlight,
  LatLng? location,
}) =>
    ReponPohonMapStruct(
      id: id,
      latitude: latitude,
      longitude: longitude,
      desa: desa,
      idpohon: idpohon,
      species: species,
      family: family,
      localname: localname,
      status: status,
      jenis: jenis,
      diameter: diameter,
      tinggi: tinggi,
      keliling: keliling,
      dpl: dpl,
      slope: slope,
      manfaat: manfaat,
      soil: soil,
      surveyor: surveyor,
      tglSurvey: tglSurvey,
      fotografer: fotografer,
      dilihat: dilihat,
      hit: hit,
      beku: beku,
      score: score,
      tglPesan: tglPesan,
      tglAdopt: tglAdopt,
      price: price,
      cur: cur,
      adopted: adopted,
      dur: dur,
      methode: methode,
      pengasuh: pengasuh,
      gfrom: gfrom,
      nama: nama,
      catatan: catatan,
      admin: admin,
      proses: proses,
      keterangan: keterangan,
      qrcode: qrcode,
      harga: harga,
      asl: asl,
      fotoPohon: fotoPohon,
      tglExp: tglExp,
      highlight: highlight,
      location: location,
    );
