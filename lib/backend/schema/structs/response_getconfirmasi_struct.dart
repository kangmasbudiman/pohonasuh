// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseGetconfirmasiStruct extends BaseStruct {
  ResponseGetconfirmasiStruct({
    int? id,
    String? invoice,
    int? price,
    String? tanggal,
    int? jmlPohon,
    String? confirmation,
    String? foto,
  })  : _id = id,
        _invoice = invoice,
        _price = price,
        _tanggal = tanggal,
        _jmlPohon = jmlPohon,
        _confirmation = confirmation,
        _foto = foto;

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

  // "confirmation" field.
  String? _confirmation;
  String get confirmation => _confirmation ?? '';
  set confirmation(String? val) => _confirmation = val;

  bool hasConfirmation() => _confirmation != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  static ResponseGetconfirmasiStruct fromMap(Map<String, dynamic> data) =>
      ResponseGetconfirmasiStruct(
        id: castToType<int>(data['id']),
        invoice: data['invoice'] as String?,
        price: castToType<int>(data['price']),
        tanggal: data['tanggal'] as String?,
        jmlPohon: castToType<int>(data['jml_pohon']),
        confirmation: data['confirmation'] as String?,
        foto: data['foto'] as String?,
      );

  static ResponseGetconfirmasiStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseGetconfirmasiStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'invoice': _invoice,
        'price': _price,
        'tanggal': _tanggal,
        'jml_pohon': _jmlPohon,
        'confirmation': _confirmation,
        'foto': _foto,
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
        'confirmation': serializeParam(
          _confirmation,
          ParamType.String,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponseGetconfirmasiStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ResponseGetconfirmasiStruct(
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
        confirmation: deserializeParam(
          data['confirmation'],
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
  String toString() => 'ResponseGetconfirmasiStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseGetconfirmasiStruct &&
        id == other.id &&
        invoice == other.invoice &&
        price == other.price &&
        tanggal == other.tanggal &&
        jmlPohon == other.jmlPohon &&
        confirmation == other.confirmation &&
        foto == other.foto;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, invoice, price, tanggal, jmlPohon, confirmation, foto]);
}

ResponseGetconfirmasiStruct createResponseGetconfirmasiStruct({
  int? id,
  String? invoice,
  int? price,
  String? tanggal,
  int? jmlPohon,
  String? confirmation,
  String? foto,
}) =>
    ResponseGetconfirmasiStruct(
      id: id,
      invoice: invoice,
      price: price,
      tanggal: tanggal,
      jmlPohon: jmlPohon,
      confirmation: confirmation,
      foto: foto,
    );
