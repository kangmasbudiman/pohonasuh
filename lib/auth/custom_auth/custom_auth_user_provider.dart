import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class PohonAsuhAuthUser {
  PohonAsuhAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<PohonAsuhAuthUser> pohonAsuhAuthUserSubject =
    BehaviorSubject.seeded(PohonAsuhAuthUser(loggedIn: false));
Stream<PohonAsuhAuthUser> pohonAsuhAuthUserStream() => pohonAsuhAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
