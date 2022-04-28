import 'package:flutter/material.dart';

class RoutButton extends StatelessWidget {
  final String routOfButton;
  final String buttonName;

  const RoutButton(
      {Key? key, required this.buttonName, required this.routOfButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(54, 33, 102, 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(routOfButton);
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
