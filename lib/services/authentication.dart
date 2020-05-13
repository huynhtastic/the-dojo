import 'package:firebase_auth/firebase_auth.dart';
import 'package:the_dojo/models/user.dart';

class AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _fromFirebaseUser(FirebaseUser user) {
    return User.fromFirebaseUser(user);
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_fromFirebaseUser);
  }

  /// returns: FirebaseUser | null
  Future _signInWith(Function signInMethod, {Map args}) async {
    if (args == null) args = <Symbol, dynamic>{};
    try {
      AuthResult result = await Function.apply(signInMethod, [], args);
      final user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signInEmailPassword({String email, String password}) async {
    return await _signInWith(_auth.signInWithEmailAndPassword,
        args: {email: email, password: password});
  }

  Future signInAnon() async {
    return await _signInWith(_auth.signInAnonymously);
  }
}
