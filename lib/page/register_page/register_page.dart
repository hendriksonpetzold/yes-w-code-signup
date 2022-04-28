import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:yes_w_code_project/page/component/button.dart';
import 'package:yes_w_code_project/page/register_page/components/register_form.dart';

import 'package:yes_w_code_project/page/register_page/register_controller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _HomePageState();
}

RegisterController controller = RegisterController();

class _HomePageState extends State<RegisterPage> {
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
            Align(
              alignment: const Alignment(-0.9, -1),
              child: SizedBox(
                height: 80,
                width: 60,
                child: Image.asset(
                  'assets/yeswcode.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            RegisterPageForm(
              name: controller.nameEditingController,
              email: controller.emailEditingController,
              bornDate: controller.bornDateEditingController,
              password: controller.passwordEditingController,
              formKey: controller.formKey,
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Button(
                buttonName: 'Criar conta',
                onTap: () {
                  String message = 'Erro ao registrar usuário';
                  if (controller.formKey.currentState!.validate()) {
                    controller.addUser(
                      controller.nameEditingController.text,
                      controller.passwordEditingController.text,
                      controller.emailEditingController.text,
                      controller.bornDateEditingController.text,
                    );
                    message = 'Usuário registrado';
                  }
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(message)));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
