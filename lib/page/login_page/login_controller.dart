import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginController {
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController userEditingController = TextEditingController();
  String validatedMessage = '';
  String unvalidatedMessage = '';
  final formKey = GlobalKey<FormState>();
  TextEditingController dialogEmailEditingController = TextEditingController();
  User? user = FirebaseAuth.instance.currentUser;
}
