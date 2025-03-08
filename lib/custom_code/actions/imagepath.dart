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

import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

Future<String> imagepath(FFUploadedFile uploadedfile) async {
  if (uploadedfile.bytes == null || uploadedfile.name == null) {
    return '';
  }

  try {
    // Dapatkan direktori sementara
    final directory = await getTemporaryDirectory();
    final filePath = '${directory.path}/${uploadedfile.name}';

    // Simpan file ke lokal
    File file = File(filePath);
    await file.writeAsBytes(uploadedfile.bytes!);

    return filePath; // Kembalikan path lokal file
  } catch (e) {
    print("Error menyimpan file: $e");
    return '';
  }
}
