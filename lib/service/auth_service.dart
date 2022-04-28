import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthException implements Exception {
  String message;

  AuthException({required this.message});
}

class AuthService extends ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  bool isLoading = true;
  getUser() {
    user = auth.currentUser;
    notifyListeners();
  }

  AuthService() {
    authCheck();
  }
  authCheck() {
    auth.authStateChanges().listen((User? user) {
      user = (user == null) ? null : user;
      isLoading = false;
      notifyListeners();
    });
  }

  Future login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      getUser();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException(message: 'usuario nao identificado');
      } else if (e.code == 'wrong-password') {
        throw AuthException(message: 'senha incorreta');
      }
    }
  }

  register(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      getUser();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException(message: 'usuario nao identificado');
      } else if (e.code == 'wrong-password') {
        throw AuthException(message: 'senha incorreta');
      }
    }
  }

  logout() async {
    await auth.signOut();
    getUser();
  }
}
