import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          Background(height: height * 0.47, width: width),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: const Appbar(
                    firstIcon: Icons.arrow_back_ios_new_rounded,secondIcon: Icons.group_work_rounded,
                  )),
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
                titletext: 'Dual',
                subtitletext: 'Sense',
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
                  'assets/images/card_images/ps5.png',
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
                    'Haptic feedback    ',
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
                    'Futuristic design    ',
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
                    'Type C-fast charging ',
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
                    'Built in microphone',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: Text(
                  'Discover a deeper, highly immersive gaming experience with the innovative new PS5™ controller, featuring haptic feedback and dynamic trigger effects2. The DualSense wireless controller also includes a built-in microphone and create button, all integrated into an iconic, comfortable design.',
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