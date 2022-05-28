import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:ps5_neumorphic_app_ui/colors/constantcolors.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

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
            borderRadius: 25,
            curveType: CurveType.concave,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent, width: 2),
              ),
              child: const Icon(
                Icons.menu,
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
