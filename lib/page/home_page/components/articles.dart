import 'package:flutter/material.dart';

class Articles extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const Articles(
      {Key? key,
      required this.description,
      required this.title,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 140,
            width: 140,
            color: Colors.grey,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 140,
            width: 230,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    description,
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
