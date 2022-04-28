import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yes_w_code_project/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
