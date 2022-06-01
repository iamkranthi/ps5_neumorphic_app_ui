import 'package:flutter/material.dart';
import 'package:ps5_neumorphic_app_ui/imports.dart';

class Appbar extends StatelessWidget {
  final IconData firstIcon;
  const Appbar({Key? key, required this.firstIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClayContainer(
            height: 50,
            width: 50,
            depth: 20,
            spread: 0.1,
            borderRadius: 25,
            curveType: CurveType.concave,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent, width: 2),
              ),
              // child: const Icon(
              //   Icons.menu,
              //   color: ConstantColors.blackcolor,
              // ),
              child: Icon(
                firstIcon,
                color: ConstantColors.blackcolor,
              ),
            ),
          ),
          ClayContainer(
            parentColor: ConstantColors.blackcolor,
            color: ConstantColors.blackcolor,
            height: 50,
            width: 50,
            depth: 20,
            borderRadius: 25,
            curveType: CurveType.convex,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent, width: 2),
              ),
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: ConstantColors.whitecolor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
