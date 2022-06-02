import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../imports.dart';

class MouseScreen extends StatelessWidget {
  const MouseScreen({Key? key}) : super(key: key);

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
               GestureDetector(
                
                 child: const Appbar(firstIcon: Icons.arrow_back_ios_new_rounded,secondIcon: Icons.group_work_rounded,)),
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
                titletext: 'Pulse 3D',
                subtitletext: 'Wireless Headset',
                choosecolor: Colors.white,
              ),
              const SizedBox(
                height: 7,
              ),
              Card(
                elevation: 20,
                shadowColor: ConstantColors.blackcolor,
                color: Colors.amberAccent,
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70),
                ),
                child: Image.asset(
                  'assets/images/icon_images/headphones.png',
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
                    size: 25,
                  ),
                  Text(
                    'Dual hidden microphones',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.smallcircle_fill_circle_fill,
                    size: 25,
                  ),
                  Text(
                    'Easy-access controls',
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
                    size: 25,
                  ),
                  Text(
                    'Fine-tuned for 3D Audio',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.xmark_circle_fill,
                    size: 25,
                  ),
                  Text(
                    'Wireless adaptor',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'The PULSE 3D wireless headset has been specifically tuned to deliver the 3D Audio made possible by the PlayStation®5 consolePowered by Tempest 3D AudioTech, the PS5 console can put you at the centre of incredibly immersive soundscapes where it feels as if the sound comes from every direction.',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 2),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
