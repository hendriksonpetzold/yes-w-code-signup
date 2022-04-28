import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yes_w_code_project/app.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp();
}
