import 'package:flutter/material.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
