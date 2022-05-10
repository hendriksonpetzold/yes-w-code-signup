import 'package:flutter/material.dart';

class LoginTextWithColor extends StatelessWidget {
  final String text;
  const LoginTextWithColor({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: Color(0xFF362166),
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}
