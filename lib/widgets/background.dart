import 'package:flutter/material.dart';
import 'package:ps5_neumorphic_app_ui/colors/constantcolors.dart';
class Background extends StatelessWidget {
  final double width, height;
  const Background({Key? key, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      width: width,
      top: 0,
      height: height,
      child:const ClipRRect(
        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20)),
        child:ColoredBox(
          color: ConstantColors.blackcolor
        )
      ),
    );
  }
}