import 'package:flutter/material.dart';
import 'package:yes_w_code_project/page/register_page/register_controller.dart';

class Button extends StatelessWidget {
  final Function? onTap;
  final String buttonName;
  Button({Key? key, required this.buttonName, this.onTap}) : super(key: key);
  final RegisterController controller = RegisterController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        color: Color(0xFF362166),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: TextButton(
        onPressed: () {
          onTap!();
        },
        child: Text(
          buttonName,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
