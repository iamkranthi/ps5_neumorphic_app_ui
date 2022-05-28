import 'package:flutter/material.dart';
import 'package:ps5_neumorphic_app_ui/colors/constantcolors.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
            text: 'Featured',
            style: TextStyle(
                letterSpacing: 2,
                fontWeight: FontWeight.w800,
                color: ConstantColors.blackcolor,
                fontFamily: 'Nunito',
                fontSize: 36),
          ),
          TextSpan(text: '\n'),
          TextSpan(
            text: 'products',
            style: TextStyle(
                letterSpacing: 8,
                fontWeight: FontWeight.w800,
                fontFamily: 'LondrinaOutline',
                color: ConstantColors.blackcolor,
                fontSize: 36),
          ),
        ]),
      ),
    );
  }
}
