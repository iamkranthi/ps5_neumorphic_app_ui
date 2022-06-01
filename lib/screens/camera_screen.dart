import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../imports.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

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
              const Appbar(),
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
                titletext: 'HD',
                subtitletext: 'Camera',
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
                  'assets/images/icon_images/camera.png',
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
                    size: 50,
                  ),
                  Text(
                    '1080p Capture      ',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.smallcircle_fill_circle_fill,
                    size: 50,
                  ),
                  Text(
                    'Built in stand    ',
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
                    size: 50,
                  ),
                  Text(
                    'Background remover ',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.xmark_circle_fill,
                    size: 50,
                  ),
                  Text(
                    'wide-angle lenses',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'Featuring dual lenses for 1080p capture and a built-in stand, the HD camera works seamlessly with the PS5 consoles background removal tools to put you in the spotlight.',
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
