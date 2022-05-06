import 'package:flutter/material.dart';
import 'package:yes_w_code_project/page/home_page/home_page.dart';
import 'page/login_page/login_page.dart';
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
        '/': (_) => const LoginPage(),
        '/registerPage': (_) => const RegisterPage(),
        '/homePage': (_) => const HomePage(),
      },
    );
  }
}
