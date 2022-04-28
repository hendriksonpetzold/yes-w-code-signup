import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yes_w_code_project/page/component/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Button(
            onTap: () {
              FirebaseAuth.instance.signOut().then(
                (value) {
                  Navigator.of(context).pushNamed('/');
                },
              );
            },
            buttonName: 'Logout',
          ),
        ),
      ),
    );
  }
}
