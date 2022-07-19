import 'package:flutter/material.dart';

class RecommendedForyouListview extends StatelessWidget {
  const RecommendedForyouListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              SizedBox(
                height: 110,
                width: 110,
                child: Image.asset('assets/Ellipse1.jpg'),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 110,
                width: 110,
                child: Image.asset('assets/Ellipse2.jpg'),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 110,
                width: 110,
                child: Image.asset('assets/Ellipse3.jpg'),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 110,
                width: 45,
                child: Image.asset('assets/Ellipse4.jpg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
