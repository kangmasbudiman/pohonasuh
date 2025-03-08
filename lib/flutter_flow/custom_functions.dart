import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/custom_auth/auth_util.dart';

String? sumSubtotal(List<dynamic>? apiResult) {
  // Jika apiResult null atau bukan List, return "Rp 0"
  if (apiResult == null || apiResult is! List) {
    return "Rp 0";
  }

  double sum = 0.0;
  for (var item in apiResult) {
    if (item is Map<String, dynamic> && item.containsKey('subtotal')) {
      sum += double.tryParse(item['subtotal']?.toString() ?? '0') ?? 0;
    }
  }

  // Format ke Rupiah tanpa .00 jika angka bulat
  final formatted = NumberFormat.currency(
          locale: 'id_ID', symbol: 'Rp', decimalDigits: sum % 1 == 0 ? 0 : 2)
      .format(sum);

  return formatted;
}

int convertStringtoint(String? grandtotalString) {
  // convert string to int
  if (grandtotalString == null) {
    return 0;
  }

  try {
    return int.parse(grandtotalString);
  } catch (e) {
    return 0;
  }
}

int? stringToInt(String? totalHarga) {
  // remove curency simbol and delimiter from string
  if (totalHarga == null) {
    return null;
  }

  String cleanString = totalHarga.replaceAll(RegExp(r'[^0-9]'), '');
  return int.tryParse(cleanString);
}

List<LatLng> stringToLatLng(dynamic locationString) {
  if (locationString is Map<String, dynamic> &&
      locationString.containsKey('latitude') &&
      locationString.containsKey('longitude')) {
    double? lat = double.tryParse(locationString['latitude'].toString());
    double? lng = double.tryParse(locationString['longitude'].toString());

    if (lat != null && lng != null) {
      return [LatLng(lat, lng)];
    }
  }

  // Jika data tidak valid, kembalikan list dengan nilai default
  return [const LatLng(0.0, 0.0)];
}

String? getLong(LatLng? currentLocation) {
  // get latitude from argument1
  if (currentLocation != null) {
    return currentLocation.longitude.toString();
  } else {
    return null;
  }
}

String? latlngTostring(LatLng? input) {
  // return Input location as string
  if (input != null) {
    return '${input.latitude},${input.longitude}';
  } else {
    return null;
  }
}

List<LatLng>? doubleToLatlng(
  List<double>? latitude,
  List<double>? longitude,
) {
  // return latlongitude and longitude  combained
  if (latitude == null || longitude == null) {
    return null;
  }

  if (latitude.length != longitude.length) {
    throw ArgumentError(
        'Latitude and Longitude lists must have the same length');
  }

  List<LatLng> latLngList = [];
  for (int i = 0; i < latitude.length; i++) {
    latLngList.add(LatLng(latitude[i], longitude[i]));
  }

  return latLngList;
}

int? indexMarkerIdentifier(
  LatLng? centreMarkerCoordinate,
  List<LatLng>? listOfLocation,
) {
  if (centreMarkerCoordinate == null ||
      listOfLocation == null ||
      listOfLocation.isEmpty) {
    return null;
  }

  const double epsilon = 0.000001; // Toleransi presisi

  for (int i = 0; i < listOfLocation.length; i++) {
    if ((centreMarkerCoordinate.latitude - listOfLocation[i].latitude).abs() <
            epsilon &&
        (centreMarkerCoordinate.longitude - listOfLocation[i].longitude).abs() <
            epsilon) {
      print("Marker ditemukan di index: $i"); // Debugging
      return i;
    }
  }

  print("Marker tidak ditemukan");
  return null; // Jika marker tidak ditemukan
}

String? gabunglatlang(
  String? lat,
  String? long,
) {
  // combine argument1 and argumen2
  if (lat != null && long != null) {
    return '$lat,$long';
  } else {
    return null;
  }
}

String? stringFromCurrentLocation(LatLng? currentLocation) {
  // get string from argument1
  if (currentLocation != null) {
    return "${currentLocation.latitude}, ${currentLocation.longitude}";
  } else {
    return null;
  }
}

String? getLat(LatLng? currentLocation) {
  // get latitude from argument1
  if (currentLocation != null) {
    return currentLocation.latitude.toString();
  } else {
    return null;
  }
}
