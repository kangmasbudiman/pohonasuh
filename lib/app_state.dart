import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _dataoffline = prefs
              .getStringList('ff_dataoffline')
              ?.map((x) {
                try {
                  return DatafototagingStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _dataoffline;
    });
    _safeInit(() {
      _listPhoto = prefs
              .getStringList('ff_listPhoto')
              ?.map((x) {
                try {
                  return ListPototagingStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _listPhoto;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _captca = false;
  bool get captca => _captca;
  set captca(bool value) {
    _captca = value;
  }

  int _messageRegister = 0;
  int get messageRegister => _messageRegister;
  set messageRegister(int value) {
    _messageRegister = value;
  }

  int _aksesadmin = 1;
  int get aksesadmin => _aksesadmin;
  set aksesadmin(int value) {
    _aksesadmin = value;
  }

  int _aksesuser = 0;
  int get aksesuser => _aksesuser;
  set aksesuser(int value) {
    _aksesuser = value;
  }

  int _aksesoperator = 2;
  int get aksesoperator => _aksesoperator;
  set aksesoperator(int value) {
    _aksesoperator = value;
  }

  Color _buttonChek = Colors.transparent;
  Color get buttonChek => _buttonChek;
  set buttonChek(Color value) {
    _buttonChek = value;
  }

  String _klikArtikel = '';
  String get klikArtikel => _klikArtikel;
  set klikArtikel(String value) {
    _klikArtikel = value;
  }

  bool _ISLOADING = false;
  bool get ISLOADING => _ISLOADING;
  set ISLOADING(bool value) {
    _ISLOADING = value;
  }

  int _grandtotal = 0;
  int get grandtotal => _grandtotal;
  set grandtotal(int value) {
    _grandtotal = value;
  }

  List<dynamic> _cartItem = [];
  List<dynamic> get cartItem => _cartItem;
  set cartItem(List<dynamic> value) {
    _cartItem = value;
  }

  void addToCartItem(dynamic value) {
    cartItem.add(value);
  }

  void removeFromCartItem(dynamic value) {
    cartItem.remove(value);
  }

  void removeAtIndexFromCartItem(int index) {
    cartItem.removeAt(index);
  }

  void updateCartItemAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    cartItem[index] = updateFn(_cartItem[index]);
  }

  void insertAtIndexInCartItem(int index, dynamic value) {
    cartItem.insert(index, value);
  }

  int _cartItemYears = 1;
  int get cartItemYears => _cartItemYears;
  set cartItemYears(int value) {
    _cartItemYears = value;
  }

  String _grandtotalstring = '';
  String get grandtotalstring => _grandtotalstring;
  set grandtotalstring(String value) {
    _grandtotalstring = value;
  }

  int _jumlahtrolley = 0;
  int get jumlahtrolley => _jumlahtrolley;
  set jumlahtrolley(int value) {
    _jumlahtrolley = value;
  }

  String _namabank = '';
  String get namabank => _namabank;
  set namabank(String value) {
    _namabank = value;
  }

  String _norek = '';
  String get norek => _norek;
  set norek(String value) {
    _norek = value;
  }

  String _atasnama = '';
  String get atasnama => _atasnama;
  set atasnama(String value) {
    _atasnama = value;
  }

  String _iconbank = '';
  String get iconbank => _iconbank;
  set iconbank(String value) {
    _iconbank = value;
  }

  String _linkwhatsapp = 'https://wa.me/';
  String get linkwhatsapp => _linkwhatsapp;
  set linkwhatsapp(String value) {
    _linkwhatsapp = value;
  }

  String _nomor = '+6285709947075';
  String get nomor => _nomor;
  set nomor(String value) {
    _nomor = value;
  }

  LatLng? _latlong;
  LatLng? get latlong => _latlong;
  set latlong(LatLng? value) {
    _latlong = value;
  }

  List<LatlangStruct> _latlang = [
    LatlangStruct.fromSerializableMap(jsonDecode(
        '{\"latlang\":\"[\\\"-1.6505284,103.5755084\\\",\\\"-1.6375582,103.5829759\\\",\\\"-1.5895648,103.6148296\\\",\\\"38.86771069999999,-77.4470208\\\"]\"}'))
  ];
  List<LatlangStruct> get latlang => _latlang;
  set latlang(List<LatlangStruct> value) {
    _latlang = value;
  }

  void addToLatlang(LatlangStruct value) {
    latlang.add(value);
  }

  void removeFromLatlang(LatlangStruct value) {
    latlang.remove(value);
  }

  void removeAtIndexFromLatlang(int index) {
    latlang.removeAt(index);
  }

  void updateLatlangAtIndex(
    int index,
    LatlangStruct Function(LatlangStruct) updateFn,
  ) {
    latlang[index] = updateFn(_latlang[index]);
  }

  void insertAtIndexInLatlang(int index, LatlangStruct value) {
    latlang.insert(index, value);
  }

  bool _bootomsheet = true;
  bool get bootomsheet => _bootomsheet;
  set bootomsheet(bool value) {
    _bootomsheet = value;
  }

  bool _connected = true;
  bool get connected => _connected;
  set connected(bool value) {
    _connected = value;
  }

  List<DatafototagingStruct> _dataoffline = [
    DatafototagingStruct.fromSerializableMap(jsonDecode(
        '{\"idpohon\":\"Hello World\",\"tanggaladopt\":\"Hello World\",\"keterangan\":\"Hello World\",\"idadopsi\":\"0\",\"idmember\":\"0\",\"caption\":\"Hello World\",\"foto\":\"[\\\"https://picsum.photos/seed/54/600\\\"]\"}'))
  ];
  List<DatafototagingStruct> get dataoffline => _dataoffline;
  set dataoffline(List<DatafototagingStruct> value) {
    _dataoffline = value;
    prefs.setStringList(
        'ff_dataoffline', value.map((x) => x.serialize()).toList());
  }

  void addToDataoffline(DatafototagingStruct value) {
    dataoffline.add(value);
    prefs.setStringList(
        'ff_dataoffline', _dataoffline.map((x) => x.serialize()).toList());
  }

  void removeFromDataoffline(DatafototagingStruct value) {
    dataoffline.remove(value);
    prefs.setStringList(
        'ff_dataoffline', _dataoffline.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDataoffline(int index) {
    dataoffline.removeAt(index);
    prefs.setStringList(
        'ff_dataoffline', _dataoffline.map((x) => x.serialize()).toList());
  }

  void updateDataofflineAtIndex(
    int index,
    DatafototagingStruct Function(DatafototagingStruct) updateFn,
  ) {
    dataoffline[index] = updateFn(_dataoffline[index]);
    prefs.setStringList(
        'ff_dataoffline', _dataoffline.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDataoffline(int index, DatafototagingStruct value) {
    dataoffline.insert(index, value);
    prefs.setStringList(
        'ff_dataoffline', _dataoffline.map((x) => x.serialize()).toList());
  }

  String _base64 = '';
  String get base64 => _base64;
  set base64(String value) {
    _base64 = value;
  }

  String _imagePath = '';
  String get imagePath => _imagePath;
  set imagePath(String value) {
    _imagePath = value;
  }

  List<ListPototagingStruct> _listPhoto = [];
  List<ListPototagingStruct> get listPhoto => _listPhoto;
  set listPhoto(List<ListPototagingStruct> value) {
    _listPhoto = value;
    prefs.setStringList(
        'ff_listPhoto', value.map((x) => x.serialize()).toList());
  }

  void addToListPhoto(ListPototagingStruct value) {
    listPhoto.add(value);
    prefs.setStringList(
        'ff_listPhoto', _listPhoto.map((x) => x.serialize()).toList());
  }

  void removeFromListPhoto(ListPototagingStruct value) {
    listPhoto.remove(value);
    prefs.setStringList(
        'ff_listPhoto', _listPhoto.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromListPhoto(int index) {
    listPhoto.removeAt(index);
    prefs.setStringList(
        'ff_listPhoto', _listPhoto.map((x) => x.serialize()).toList());
  }

  void updateListPhotoAtIndex(
    int index,
    ListPototagingStruct Function(ListPototagingStruct) updateFn,
  ) {
    listPhoto[index] = updateFn(_listPhoto[index]);
    prefs.setStringList(
        'ff_listPhoto', _listPhoto.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInListPhoto(int index, ListPototagingStruct value) {
    listPhoto.insert(index, value);
    prefs.setStringList(
        'ff_listPhoto', _listPhoto.map((x) => x.serialize()).toList());
  }

  List<LatLng> _latihanlatlang = [
    LatLng(-1.6375582, 103.5829759),
    LatLng(-1.671202, 103.614698)
  ];
  List<LatLng> get latihanlatlang => _latihanlatlang;
  set latihanlatlang(List<LatLng> value) {
    _latihanlatlang = value;
  }

  void addToLatihanlatlang(LatLng value) {
    latihanlatlang.add(value);
  }

  void removeFromLatihanlatlang(LatLng value) {
    latihanlatlang.remove(value);
  }

  void removeAtIndexFromLatihanlatlang(int index) {
    latihanlatlang.removeAt(index);
  }

  void updateLatihanlatlangAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    latihanlatlang[index] = updateFn(_latihanlatlang[index]);
  }

  void insertAtIndexInLatihanlatlang(int index, LatLng value) {
    latihanlatlang.insert(index, value);
  }

  List<ListImageOnlineStruct> _listPhotoOnline = [
    ListImageOnlineStruct.fromSerializableMap(jsonDecode(
        '{\"idadopsi\":\"0\",\"image\":\"https://picsum.photos/seed/363/600\",\"imageString\":\"Hello World\"}'))
  ];
  List<ListImageOnlineStruct> get listPhotoOnline => _listPhotoOnline;
  set listPhotoOnline(List<ListImageOnlineStruct> value) {
    _listPhotoOnline = value;
  }

  void addToListPhotoOnline(ListImageOnlineStruct value) {
    listPhotoOnline.add(value);
  }

  void removeFromListPhotoOnline(ListImageOnlineStruct value) {
    listPhotoOnline.remove(value);
  }

  void removeAtIndexFromListPhotoOnline(int index) {
    listPhotoOnline.removeAt(index);
  }

  void updateListPhotoOnlineAtIndex(
    int index,
    ListImageOnlineStruct Function(ListImageOnlineStruct) updateFn,
  ) {
    listPhotoOnline[index] = updateFn(_listPhotoOnline[index]);
  }

  void insertAtIndexInListPhotoOnline(int index, ListImageOnlineStruct value) {
    listPhotoOnline.insert(index, value);
  }

  String _tokenFCM = '';
  String get tokenFCM => _tokenFCM;
  set tokenFCM(String value) {
    _tokenFCM = value;
  }

  final _profilManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> profil({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _profilManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProfilCache() => _profilManager.clear();
  void clearProfilCacheKey(String? uniqueKey) =>
      _profilManager.clearRequest(uniqueKey);

  final _sliderManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> slider({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _sliderManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSliderCache() => _sliderManager.clear();
  void clearSliderCacheKey(String? uniqueKey) =>
      _sliderManager.clearRequest(uniqueKey);

  final _rowHiglightManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> rowHiglight({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _rowHiglightManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearRowHiglightCache() => _rowHiglightManager.clear();
  void clearRowHiglightCacheKey(String? uniqueKey) =>
      _rowHiglightManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
