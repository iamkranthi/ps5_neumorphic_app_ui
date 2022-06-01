import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../imports.dart';

class PlayStationScreen extends StatelessWidget {
  const PlayStationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Background(height: height * 0.47, width: width),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
               const Appbar(firstIcon: Icons.arrow_back_ios_new_rounded,),
              Image.asset(
                'assets/images/icon_images/ps5_icons.png',
                scale: 5.4,
              ),
              Container(
                height: 15,
                width: 270,
                color: ConstantColors.cardcolor,
              ),
              const TitleText(
                titletext: 'Sony',
                subtitletext: 'PlayStation 5',
                choosecolor: Colors.white,
              ),
              const SizedBox(
                height: 7,
              ),
              Card(
                elevation: 20,
                shadowColor: ConstantColors.blackcolor,
                color: Colors.orangeAccent,
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Image.asset(
                  'assets/images/icon_images/playstation_.png',
                  width: 400,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    CupertinoIcons.arrowtriangle_up_circle_fill,
                    size: 45,
                  ),
                  Text(
                    '4K resolution at 120FPS',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.smallcircle_fill_circle_fill,
                    size: 45,
                  ),
                  Text(
                    '3.5GHz clock speed     ',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 29,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    CupertinoIcons.stop_circle_fill,
                    size: 45,
                  ),
                  Text(
                    'ultra-high speed SSD',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.xmark_circle_fill,
                    size: 45,
                  ),
                  Text(
                    'Game boost available',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'Experience lightning-fast loading with an ultra-high speed SSD, deeper immersion with support for haptic feedback1, adaptive triggers1 and 3D Audio*, and an all-new generation of incredible PlayStation games',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    wordSpacing: 2,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
