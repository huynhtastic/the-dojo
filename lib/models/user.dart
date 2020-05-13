import 'package:firebase_auth/firebase_auth.dart';

class User {
  final String uid;

  User({this.uid});

  static User fromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }
}
