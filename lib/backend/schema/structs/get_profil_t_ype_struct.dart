// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetProfilTYpeStruct extends BaseStruct {
  GetProfilTYpeStruct({
    int? id,
    String? name,
    String? emaile,
    String? hp,
    int? admin,
  })  : _id = id,
        _name = name,
        _emaile = emaile,
        _hp = hp,
        _admin = admin;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "emaile" field.
  String? _emaile;
  String get emaile => _emaile ?? '';
  set emaile(String? val) => _emaile = val;

  bool hasEmaile() => _emaile != null;

  // "hp" field.
  String? _hp;
  String get hp => _hp ?? '';
  set hp(String? val) => _hp = val;

  bool hasHp() => _hp != null;

  // "admin" field.
  int? _admin;
  int get admin => _admin ?? 0;
  set admin(int? val) => _admin = val;

  void incrementAdmin(int amount) => admin = admin + amount;

  bool hasAdmin() => _admin != null;

  static GetProfilTYpeStruct fromMap(Map<String, dynamic> data) =>
      GetProfilTYpeStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        emaile: data['emaile'] as String?,
        hp: data['hp'] as String?,
        admin: castToType<int>(data['admin']),
      );

  static GetProfilTYpeStruct? maybeFromMap(dynamic data) => data is Map
      ? GetProfilTYpeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'emaile': _emaile,
        'hp': _hp,
        'admin': _admin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'emaile': serializeParam(
          _emaile,
          ParamType.String,
        ),
        'hp': serializeParam(
          _hp,
          ParamType.String,
        ),
        'admin': serializeParam(
          _admin,
          ParamType.int,
        ),
      }.withoutNulls;

  static GetProfilTYpeStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetProfilTYpeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        emaile: deserializeParam(
          data['emaile'],
          ParamType.String,
          false,
        ),
        hp: deserializeParam(
          data['hp'],
          ParamType.String,
          false,
        ),
        admin: deserializeParam(
          data['admin'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GetProfilTYpeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetProfilTYpeStruct &&
        id == other.id &&
        name == other.name &&
        emaile == other.emaile &&
        hp == other.hp &&
        admin == other.admin;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, emaile, hp, admin]);
}

GetProfilTYpeStruct createGetProfilTYpeStruct({
  int? id,
  String? name,
  String? emaile,
  String? hp,
  int? admin,
}) =>
    GetProfilTYpeStruct(
      id: id,
      name: name,
      emaile: emaile,
      hp: hp,
      admin: admin,
    );
