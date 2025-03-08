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

// Set your action name, define your arguments and return parameter,

// and then add the boilerplate code using the green button on the right!

import 'dart:convert';
import 'dart:typed_data';

Future<String?> uploadBase64ToSupabase(
    String base64String, String fileName) async {
  try {
    // Konversi Base64 ke Uint8List (bytes)
    Uint8List fileBytes = base64Decode(base64String);

    // Tentukan path penyimpanan di Supabase Storage
    final filePath = 'taging/$fileName.png';

    // Unggah ke Supabase Storage
    await Supabase.instance.client.storage
        .from('gambar') // Ganti dengan nama bucket di Supabase
        .uploadBinary(filePath, fileBytes);

    // Dapatkan URL file setelah upload berhasil
    final publicUrl =
        Supabase.instance.client.storage.from('gambar').getPublicUrl(filePath);

    return publicUrl; // Kembalikan URL gambar
  } catch (e) {
    print("Upload error: $e");
    return null; // Jika error, kembalikan null
  }
}
