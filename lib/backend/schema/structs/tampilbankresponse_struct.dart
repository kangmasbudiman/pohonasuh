// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TampilbankresponseStruct extends BaseStruct {
  TampilbankresponseStruct({
    int? id,
    String? atasNama,
    String? namaBank,
    String? noRek,
    String? icon,
  })  : _id = id,
        _atasNama = atasNama,
        _namaBank = namaBank,
        _noRek = noRek,
        _icon = icon;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "atas_nama" field.
  String? _atasNama;
  String get atasNama => _atasNama ?? '';
  set atasNama(String? val) => _atasNama = val;

  bool hasAtasNama() => _atasNama != null;

  // "nama_bank" field.
  String? _namaBank;
  String get namaBank => _namaBank ?? '';
  set namaBank(String? val) => _namaBank = val;

  bool hasNamaBank() => _namaBank != null;

  // "no_rek" field.
  String? _noRek;
  String get noRek => _noRek ?? '';
  set noRek(String? val) => _noRek = val;

  bool hasNoRek() => _noRek != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;

  bool hasIcon() => _icon != null;

  static TampilbankresponseStruct fromMap(Map<String, dynamic> data) =>
      TampilbankresponseStruct(
        id: castToType<int>(data['id']),
        atasNama: data['atas_nama'] as String?,
        namaBank: data['nama_bank'] as String?,
        noRek: data['no_rek'] as String?,
        icon: data['icon'] as String?,
      );

  static TampilbankresponseStruct? maybeFromMap(dynamic data) => data is Map
      ? TampilbankresponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'atas_nama': _atasNama,
        'nama_bank': _namaBank,
        'no_rek': _noRek,
        'icon': _icon,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'atas_nama': serializeParam(
          _atasNama,
          ParamType.String,
        ),
        'nama_bank': serializeParam(
          _namaBank,
          ParamType.String,
        ),
        'no_rek': serializeParam(
          _noRek,
          ParamType.String,
        ),
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
      }.withoutNulls;

  static TampilbankresponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TampilbankresponseStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        atasNama: deserializeParam(
          data['atas_nama'],
          ParamType.String,
          false,
        ),
        namaBank: deserializeParam(
          data['nama_bank'],
          ParamType.String,
          false,
        ),
        noRek: deserializeParam(
          data['no_rek'],
          ParamType.String,
          false,
        ),
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TampilbankresponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TampilbankresponseStruct &&
        id == other.id &&
        atasNama == other.atasNama &&
        namaBank == other.namaBank &&
        noRek == other.noRek &&
        icon == other.icon;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, atasNama, namaBank, noRek, icon]);
}

TampilbankresponseStruct createTampilbankresponseStruct({
  int? id,
  String? atasNama,
  String? namaBank,
  String? noRek,
  String? icon,
}) =>
    TampilbankresponseStruct(
      id: id,
      atasNama: atasNama,
      namaBank: namaBank,
      noRek: noRek,
      icon: icon,
    );
