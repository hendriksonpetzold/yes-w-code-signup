import 'package:flutter/material.dart';

class TextWithInkWellButton extends StatelessWidget {
  final String buttonText;
  final String pageText;
  final String routeOffButton;
  const TextWithInkWellButton({
    Key? key,
    required this.buttonText,
    required this.pageText,
    required this.routeOffButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFFC4C4C4),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          Text(
            pageText,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(routeOffButton);
            },
            child: Text(
              buttonText,
              style: const TextStyle(
                color: Color(0xFF362166),
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
