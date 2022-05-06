import 'package:flutter/material.dart';

class LoginPageForm extends StatefulWidget {
  final TextEditingController? user;
  final TextEditingController? password;
  const LoginPageForm({Key? key, this.user, this.password}) : super(key: key);

  @override
  State<LoginPageForm> createState() => _LoginPageFormState();
}

class _LoginPageFormState extends State<LoginPageForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: widget.user,
            decoration: const InputDecoration(
              labelText: 'E-mail',
              labelStyle: TextStyle(color: Color(0xFF362166)),
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
            controller: widget.password,
            decoration: const InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(color: Color(0xFF362166)),
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
