import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yes_w_code_project/page/component/button.dart';
import 'package:yes_w_code_project/page/login_page/login_controller.dart';

LoginController controller = LoginController();

class ChangePasswordDialog extends Dialog {
  final BuildContext context;
  final Function rebuilding;
  ChangePasswordDialog({
    Key? key,
    required this.context,
    required this.rebuilding,
  }) : super(
          key: key,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Form(
            key: controller.formKey,
            child: SizedBox(
              width: 380,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Insira seu e-mail para receber o código de redefinição de senha.',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      controller: controller.dialogEmailEditingController,
                      validator: (email) {
                        if (!RegExp(r'[a-zA-z0-9.-_]+@[a-zA-z0-9-_]+\.(com)+')
                            .hasMatch(
                          email ?? '',
                        )) {
                          return 'E-mail nao preenchido corretamente';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: 'E-mail',
                        labelStyle: TextStyle(color: Color(0xFF362166)),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 300,
                    child: Column(
                      children: [
                        Button(
                          buttonName: 'Enviar código',
                          onTap: () async {
                            if (controller.formKey.currentState!.validate()) {
                              try {
                                await FirebaseAuth.instance
                                    .sendPasswordResetEmail(
                                  email: controller
                                      .dialogEmailEditingController.text,
                                );
                                controller.validatedMessage =
                                    'Código enviado com sucesso!';
                                controller.unvalidatedMessage = '';
                              } catch (e) {
                                controller.unvalidatedMessage =
                                    'E-mail nao encontrado';
                                controller.validatedMessage = '';
                              }
                            } else {
                              controller.validatedMessage = '';
                              controller.unvalidatedMessage = '';
                            }
                            await rebuilding();
                            //Navigator.of(context).pop();
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Stack(
                          children: [
                            Text(
                              controller.validatedMessage,
                              style: const TextStyle(
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              controller.unvalidatedMessage,
                              style: const TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
}
