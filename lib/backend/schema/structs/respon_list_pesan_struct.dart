// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponListPesanStruct extends BaseStruct {
  ResponListPesanStruct({
    int? id,
    String? pesan,
    String? status,
  })  : _id = id,
        _pesan = pesan,
        _status = status;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "pesan" field.
  String? _pesan;
  String get pesan => _pesan ?? '';
  set pesan(String? val) => _pesan = val;

  bool hasPesan() => _pesan != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static ResponListPesanStruct fromMap(Map<String, dynamic> data) =>
      ResponListPesanStruct(
        id: castToType<int>(data['id']),
        pesan: data['pesan'] as String?,
        status: data['status'] as String?,
      );

  static ResponListPesanStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponListPesanStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'pesan': _pesan,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'pesan': serializeParam(
          _pesan,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponListPesanStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponListPesanStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        pesan: deserializeParam(
          data['pesan'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResponListPesanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponListPesanStruct &&
        id == other.id &&
        pesan == other.pesan &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([id, pesan, status]);
}

ResponListPesanStruct createResponListPesanStruct({
  int? id,
  String? pesan,
  String? status,
}) =>
    ResponListPesanStruct(
      id: id,
      pesan: pesan,
      status: status,
    );
