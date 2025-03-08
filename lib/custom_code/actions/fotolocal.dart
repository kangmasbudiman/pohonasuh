// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

Future fotolocal(FFUploadedFile uploadedImage) async {
  // Add your function code here!

  try {
    if (uploadedImage.bytes == null) {
      throw Exception("Gambar tidak ditemukan");
    }

    String base64Image = base64Encode(uploadedImage.bytes!);
    FFAppState().base64 = base64Image;
    return base64Image;
  } catch (e) {
    return "Error: $e";
  }
}
