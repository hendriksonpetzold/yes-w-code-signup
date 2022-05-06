import 'package:flutter/material.dart';

class LoginPageApresentationText extends StatelessWidget {
  const LoginPageApresentationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          width: double.infinity,
          height: 40,
          child: Text(
            'Uma revolução em cada vida.',
            style: TextStyle(
              color: Color(0xFF362166),
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          'Somos uma ong que prepara pessoas de todas idades para atuarem no mercado de tecnologia',
          style: TextStyle(
            color: Color(0xFF362166),
          ),
        ),
      ],
    );
  }
}
