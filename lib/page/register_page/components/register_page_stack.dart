import 'package:flutter/material.dart';

class RegisterPageStack extends StatelessWidget {
  const RegisterPageStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 285,
              height: 235,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/yeswcodeimage1.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.9, -0.85),
            child: SizedBox(
              height: 36,
              width: 35,
              child: Image.asset(
                'assets/yeswcodelogoimage.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Align(
              alignment: Alignment(0, 0.5),
              child: SizedBox(
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
            ),
          ),
        ],
      ),
    );
  }
}
