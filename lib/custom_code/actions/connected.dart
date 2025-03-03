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
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:io';

Future connected() async {
  // Add your function code here!
  // Add your function code here!
  StreamSubscription<ConnectivityResult>? subscription;
  subscription = Connectivity()
      .onConnectivityChanged
      .listen((ConnectivityResult result) async {
    // Got a new connectivity status!

    bool hasConnection = await checkConnection();

    //print("Connection: ${hasConnection}");

    FFAppState().update(() {
      FFAppState().connected = hasConnection;
    });
    FFAppState().notifyListeners();
  });
}

//The test to actually see if there is a connection to the internet.dsadaas
Future<bool> checkConnection() async {
  bool hasConnection = false;

  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      hasConnection = true;
    } else {
      hasConnection = false;
    }
  } on SocketException catch (_) {
    hasConnection = false;
  }

  return hasConnection;
}
