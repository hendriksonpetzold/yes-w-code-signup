import 'package:flutter/material.dart';
import 'page/login_page/login_page.dart';
import 'page/onboarding_page/onboading_page.dart';
import 'page/register_page/register_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => const OnBoadingPage(),
        '/registerPage': (_) => const RegisterPage(),
        '/loginPage': (_) => const LoginPage(),
      },
    );
  }
}
