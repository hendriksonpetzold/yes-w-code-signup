import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yes_w_code_project/page/component/button.dart';
import 'package:yes_w_code_project/page/login_page/components/custom_dialog.dart';
import 'package:yes_w_code_project/page/login_page/components/login_page_apresentation_text.dart';
import 'package:yes_w_code_project/page/login_page/components/login_page_form.dart';
import 'package:yes_w_code_project/page/login_page/components/login_page_stack.dart';
import 'package:yes_w_code_project/page/login_page/components/text_with_inkwell_button.dart';
import 'package:yes_w_code_project/page/login_page/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

LoginController controller = LoginController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const LoginPageStack(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: [
                  const LoginPageApresentationText(),
                  const SizedBox(
                    height: 30,
                  ),
                  LoginPageForm(
                    user: controller.userEditingController,
                    password: controller.passwordEditingController,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Button(
                    buttonName: 'Login',
                    onTap: () async {
                      try {
                        await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                          email: controller.userEditingController.text,
                          password: controller.passwordEditingController.text,
                        )
                            .then((value) {
                          Navigator.of(context).pushNamed('/homePage');
                        });
                      } catch (e) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return CustomDialog(
                              message: 'E-mail ou senha incorreta',
                              context: context,
                            );
                          },
                        );
                      }
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const TextWithInkWellButton(
                      buttonText: 'Cadastre-se',
                      pageText: 'Não tem uma conta? ',
                      routeOffButton: '/registerPage')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
