// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginuserStruct extends BaseStruct {
  LoginuserStruct({
    String? value,
    String? email,
    String? name,
    int? id,
    int? admin,
  })  : _value = value,
        _email = email,
        _name = name,
        _id = id,
        _admin = admin;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "admin" field.
  int? _admin;
  int get admin => _admin ?? 0;
  set admin(int? val) => _admin = val;

  void incrementAdmin(int amount) => admin = admin + amount;

  bool hasAdmin() => _admin != null;

  static LoginuserStruct fromMap(Map<String, dynamic> data) => LoginuserStruct(
        value: data['value'] as String?,
        email: data['email'] as String?,
        name: data['name'] as String?,
        id: castToType<int>(data['id']),
        admin: castToType<int>(data['admin']),
      );

  static LoginuserStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginuserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'value': _value,
        'email': _email,
        'name': _name,
        'id': _id,
        'admin': _admin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'admin': serializeParam(
          _admin,
          ParamType.int,
        ),
      }.withoutNulls;

  static LoginuserStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginuserStruct(
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        admin: deserializeParam(
          data['admin'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'LoginuserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginuserStruct &&
        value == other.value &&
        email == other.email &&
        name == other.name &&
        id == other.id &&
        admin == other.admin;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([value, email, name, id, admin]);
}

LoginuserStruct createLoginuserStruct({
  String? value,
  String? email,
  String? name,
  int? id,
  int? admin,
}) =>
    LoginuserStruct(
      value: value,
      email: email,
      name: name,
      id: id,
      admin: admin,
    );
