// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:intl/intl.dart';

Future<int> newCustomAction(List<dynamic>? apiResult) async {
  int sum = 0;

  if (apiResult != null) {
    for (var item in apiResult) {
      if (item['subtotal'] != null) {
        sum += int.tryParse(item['subtotal'].toString()) ?? 0;
      }
    }
  }

  return sum;
}
