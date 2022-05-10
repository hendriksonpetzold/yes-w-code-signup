import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yes_w_code_project/page/component/button.dart';
import 'package:yes_w_code_project/page/login_page/components/change_password_dialog.dart';
import 'package:yes_w_code_project/page/login_page/components/error_dialog.dart';
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
      appBar: PreferredSize(
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        preferredSize: const Size.fromHeight(0),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LoginPageStack(),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                SizedBox(
                  height: 575,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                      height: 540,
                      width: 290,
                      child: Image.asset(
                        'assets/backgroundimage.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
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
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(
                                  builder: (context, setState) {
                                    return ChangePasswordDialog(
                                      context: context,
                                      rebuilding: () {
                                        setState(() {});
                                      },
                                    );
                                  },
                                );
                              },
                            );
                          },
                          child: const Text(
                            'Esqueci minha senha',
                            style: TextStyle(
                              color: Color(0xFF362166),
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Button(
                        buttonName: 'Login',
                        onTap: () async {
                          try {
                            await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                              email: controller.userEditingController.text,
                              password:
                                  controller.passwordEditingController.text,
                            )
                                .then((value) {
                              Navigator.of(context).pushNamed('/homePage');
                            });
                          } catch (e) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return ErrorDialog(
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
                        routeOffButton: '/registerPage',
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
