import 'package:flutter/material.dart';

class LoginPageForm extends StatelessWidget {
  const LoginPageForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: 'Usuário',
              labelStyle: TextStyle(color: Color.fromRGBO(54, 33, 102, 1)),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(color: Color.fromRGBO(54, 33, 102, 1)),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
