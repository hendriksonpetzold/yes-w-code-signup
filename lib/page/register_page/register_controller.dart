import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class RegisterController {
  final formKey = GlobalKey<FormState>();
  TextEditingController passwordEC = TextEditingController();
  TextEditingController nameEC = TextEditingController();
  TextEditingController bornDateEC = TextEditingController();
  TextEditingController emailEC = TextEditingController();
  String name = '';
  //String password = '';
  //String email = '';
  //String bornDate = '';
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> addUser(
      String name, String password, String email, String bornDate) {
    return users.add({
      'name': name,
      'password': password,
      'email': email,
      'bornDate': bornDate,
    });
  }
}
