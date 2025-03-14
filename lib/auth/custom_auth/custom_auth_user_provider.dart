import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class AdopsiPohonAuthUser {
  AdopsiPohonAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  LoginuserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<AdopsiPohonAuthUser> adopsiPohonAuthUserSubject =
    BehaviorSubject.seeded(AdopsiPohonAuthUser(loggedIn: false));
Stream<AdopsiPohonAuthUser> adopsiPohonAuthUserStream() =>
    adopsiPohonAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
