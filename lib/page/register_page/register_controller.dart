import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class RegisterController {
  final formKey = GlobalKey<FormState>();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController bornDateEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> addUser(
    String name,
    String password,
    String email,
    String bornDate,
  ) {
    auth.createUserWithEmailAndPassword(email: email, password: password);
    return users.add({
      'name': name,
      'password': password,
      'email': email,
      'bornDate': bornDate,
    });
  }
}
