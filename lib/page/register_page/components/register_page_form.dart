import 'package:flutter/material.dart';
import 'package:yes_w_code_project/page/register_page/register_controller.dart';
import 'package:yes_w_code_project/utils/born_date_mask.dart';

class RegisterPageForm extends StatefulWidget {
  const RegisterPageForm(
      {Key? key,
      required this.controller,
      required this.formKey,
      required this.onChangeName,
      required this.mudarSenhaBanana})
      : super(key: key);

  final RegisterController controller;
  final GlobalKey formKey;
  final void Function(String) onChangeName;
  final void Function(String) mudarSenhaBanana;

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
              onChanged: (name) {
                print('formfield name $name');
                widget.onChangeName(name);
              },
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
              // ),
              // TextFormField(
              //   autovalidateMode: AutovalidateMode.onUserInteraction,
              //   controller: controller.emailEC,
              //   //onChanged: (email) {
              //   //controller.email = email;
              //   //},
              //   validator: (email) {
              //     if (!RegExp(r'[a-zA-z0-9.-_]+@[a-zA-z0-9-_]+\..+').hasMatch(
              //       email ?? '',
              //     )) {
              //       return 'E-mail invalido';
              //     }
              //     return null;
              //   },
              //   decoration: const InputDecoration(
              //     labelText: 'E-mail',
              //     labelStyle: TextStyle(color: Color.fromRGBO(54, 33, 102, 1)),
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              // TextFormField(
              //   autovalidateMode: AutovalidateMode.onUserInteraction,
              //   inputFormatters: [bornDateMask],
              //   controller: controller.bornDateEC,
              //   //onChanged: (bornDate) {
              //   //controller.bornDate = bornDate;
              //   //},
              //   validator: (bornDate) {
              //     if (!RegExp(r'^\d{2}\/\d{2}\/\d{4}$').hasMatch(
              //       bornDate ?? '',
              //     )) {
              //       return 'Data de nascimento incorreta';
              //     }
              //     return null;
              //   },
              //   decoration: const InputDecoration(
              //     labelText: 'Data de Nascimento',
              //     labelStyle: TextStyle(color: Color.fromRGBO(54, 33, 102, 1)),
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
              //     ),
              //   ),
              // ),

              // const SizedBox(
              //   height: 15,
              // ),
              // TextFormField(
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              // obscureText: true,
              // validator: (confirmPassword) {
              //   if (confirmPassword == null ||
              //       confirmPassword != controller.passwordEC.text) {
              //     return 'As senhas estão diferentes';
              //   }
              //   return null;
              // },
              // decoration: const InputDecoration(
              //   labelText: 'Confirmar Senha',
              //   labelStyle: TextStyle(color: Color.fromRGBO(54, 33, 102, 1)),
              //   border: OutlineInputBorder(
              //     borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
              //   ),
              //   enabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
              //   ),
              // ),
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscureText: true,
              //controller: controller.passwordEC,
              onChanged: (password) {
                widget.mudarSenhaBanana(password);
              },
              validator: (value) {
                if (value == null || value.length < 6) {
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
          ],
        ),
      ),
    );
  }
}
