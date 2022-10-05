import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Svgpic extends StatelessWidget {
  const Svgpic({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          "assets/star.svg",
          height: 20,
          color: Colors.orange,
        ),
        SvgPicture.asset(
          "assets/star.svg",
          height: 20,
          color: Colors.orange,
        ),
        SvgPicture.asset(
          "assets/star.svg",
          height: 20,
          color: Colors.orange,
        ),
        SvgPicture.asset(
          "assets/star.svg",
          height: 20,
          color: Colors.orange,
        ),
      ],
    );
  }
}
