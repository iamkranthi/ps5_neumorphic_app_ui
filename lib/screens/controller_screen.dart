import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../imports.dart';

class ControllerScreen extends StatelessWidget {
  const ControllerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Background(height: height * 0.5, width: width),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Appbar(),
              Image.asset(
                'assets/images/icon_images/ps5_icons.png',
                scale: 5.4,
              ),
              Container(
                height: 15,
                width: 470,
                color: Colors.yellow,
              ),
              const TitleText(
                titletext: 'Dual',
                subtitletext: 'Sense',
                choosecolor: Colors.white,
              ),
              const SizedBox(
                height: 50,
              ),
              Card(
                color: Colors.amberAccent,
                margin: const EdgeInsets.all(10),
                shape: const StadiumBorder(
                  side: BorderSide(
                    width: 4,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Image.asset(
                  'assets/images/card_images/ps5.png',
                  width: 400,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
