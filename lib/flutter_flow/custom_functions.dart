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
