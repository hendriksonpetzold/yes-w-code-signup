import 'package:flutter/material.dart';
import 'package:yes_w_code_project/page/component/button.dart';
import 'package:yes_w_code_project/page/login_page/components/login_page_form.dart';
import 'package:yes_w_code_project/page/login_page/components/text_with_inkwell_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Text(
                      'Realize o login para obter 100% dos nossos recursos!!',
                      style: TextStyle(
                        color: Color.fromRGBO(54, 33, 102, 1),
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  const LoginPageForm(),
                  const SizedBox(
                    height: 100,
                  ),
                  Button(
                    buttonName: 'Login',
                  ),
                  const TextWithInkWellButton(
                      buttonText: 'Criar conta',
                      pageText: 'Ainda nao tem uma conta? ',
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
