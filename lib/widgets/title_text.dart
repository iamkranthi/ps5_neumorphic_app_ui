import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String titletext;
  final String subtitletext;
  final Color choosecolor;
  const TitleText(
      {Key? key,
      required this.titletext,
      required this.subtitletext,
      required this.choosecolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: titletext,
              style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.w800,
                  color: choosecolor,
                  fontFamily: 'Nunito',
                  fontSize: 36),
            ),
            const TextSpan(text: '\n'),
            TextSpan(
              text: subtitletext,
              style: TextStyle(
                  letterSpacing: 8,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'LondrinaOutline',
                  color: choosecolor,
                  fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }
}
