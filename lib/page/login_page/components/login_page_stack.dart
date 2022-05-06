import 'package:flutter/material.dart';

class LoginPageStack extends StatelessWidget {
  const LoginPageStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(-0.9, -0.8),
            child: SizedBox(
              height: 36,
              width: 35,
              child: Image.asset(
                'assets/yeswcodelogoimage.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 251,
              width: 268,
              child: Image.asset(
                'assets/yeswcodeloginimage.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
