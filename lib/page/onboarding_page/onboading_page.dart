import 'package:flutter/material.dart';
import 'package:yes_w_code_project/page/component/button.dart';

class OnBoadingPage extends StatelessWidget {
  const OnBoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 350,
            ),
            const SizedBox(
              width: double.infinity,
              height: 100,
              child: Text(
                'Bem Vindo a Yes, W Code',
                style: TextStyle(
                  color: Color.fromRGBO(54, 33, 102, 1),
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Button(
              onTap: () {
                Navigator.of(context).pushNamed('/loginPage');
              },
              buttonName: 'Logar',
            ),
            const SizedBox(
              height: 15,
            ),
            Button(
              onTap: () {
                Navigator.of(context).pushNamed('/registerPage');
              },
              buttonName: 'Criar uma conta',
            ),
          ],
        ),
      ),
    );
  }
}
