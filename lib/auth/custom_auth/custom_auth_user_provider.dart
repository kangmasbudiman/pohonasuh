import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class PohonAsuhAuthUser {
  PohonAsuhAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  LoginuserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<PohonAsuhAuthUser> pohonAsuhAuthUserSubject =
    BehaviorSubject.seeded(PohonAsuhAuthUser(loggedIn: false));
Stream<PohonAsuhAuthUser> pohonAsuhAuthUserStream() => pohonAsuhAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
