import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //get instance of firebase auth

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //get current user
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  //sing in
  Future<UserCredential> singInWithEmailPassword(String email, password) async {
    try {
      //sing user in
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    }
    // catch any errors
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // sing up
  Future<UserCredential> singUnWithEmailPassword(String email, password) async {
    try {
      //sing user in
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    }
    // catch any errors
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //sing out
  Future<void> singOut() async {
    return await _firebaseAuth.signOut();
  }
}
