import 'package:flutter/material.dart';

import 'package:yes_w_code_project/utils/born_date_mask.dart';

class RegisterPageForm extends StatefulWidget {
  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController bornDate;
  final TextEditingController password;
  final GlobalKey formKey;
  const RegisterPageForm({
    Key? key,
    required this.name,
    required this.email,
    required this.bornDate,
    required this.password,
    required this.formKey,
  }) : super(key: key);

  @override
  State<RegisterPageForm> createState() => _RegisterPageFormState();
}

class _RegisterPageFormState extends State<RegisterPageForm> {
  final BornDateMask bornDateMask = BornDateMask();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 100,
              child: Text(
                'Cadestre-se e tenha conteúdo 100% gratuito para voar na carreira',
                style: TextStyle(
                  color: Color.fromRGBO(54, 33, 102, 1),
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: widget.name,
              validator: (name) {
                if (name == null || name.length < 3) {
                  return 'Nome muito pequeno';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Nome',
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
              controller: widget.email,
              validator: (email) {
                if (!RegExp(r'[a-zA-z0-9.-_]+@[a-zA-z0-9-_]+\.(com)+').hasMatch(
                  email ?? '',
                )) {
                  return 'E-mail invalido';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'E-mail',
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
              inputFormatters: [bornDateMask],
              controller: widget.bornDate,
              validator: (bornDate) {
                if (!RegExp(r'^\d{2}\/\d{2}\/\d{4}$').hasMatch(
                  bornDate ?? '',
                )) {
                  return 'Data de nascimento incorreta';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Data de Nascimento',
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
              controller: widget.password,
              validator: (value) {
                if (value == null ||
                    value.length < 6 ||
                    !RegExp(r'[0-9]').hasMatch(value) ||
                    !RegExp(r'[A-Z]').hasMatch(value) ||
                    !RegExp(r'[a-z]').hasMatch(value)) {
                  return 'Senha Fraca';
                }
                return null;
              },
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
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscureText: true,
              validator: (confirmPassword) {
                if (confirmPassword == null ||
                    confirmPassword != widget.password.text) {
                  return 'As senhas estão diferentes';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Confirmar Senha',
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
      ),
    );
  }
}
