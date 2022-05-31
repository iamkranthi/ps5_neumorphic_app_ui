import 'package:flutter/material.dart';
import 'package:ps5_neumorphic_app_ui/colors/constantcolors.dart';
import 'package:ps5_neumorphic_app_ui/items/item_card_shape.dart';
import 'package:ps5_neumorphic_app_ui/items/items.dart';
class ItemsWidgets extends StatelessWidget {
  final List<Item> items;
  final double screenWidth, screenHeight;
  const ItemsWidgets(
      {Key? key,
      required this.items,
      required this.screenWidth,
      required this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.4,
      child: PageView.builder(
        allowImplicitScrolling: true,
        scrollBehavior: const ScrollBehavior(),
        itemCount: items.length,
        controller: PageController(viewportFraction: 0.7),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Stack(
              children: [
                Material(
                  color: ConstantColors.cardcolor,
                  elevation: 10,
                  shape: ItemCardShape(screenWidth * 0.65, screenHeight * 0.38),
                ),
                Align(
                  alignment: const Alignment(0, -0.1),
                  child: Image.asset(
                    items[index].imagepath,
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.7, 0.8),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: items[index].title,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          color: ConstantColors.whitecolor,
                        ),
                      ),
                      const TextSpan(text: '\n'),
                      TextSpan(
                        text: items[index].description,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: ConstantColors.whitecolor,
                        ),
                      ),
                    ]),
                  ),
                ),
                Positioned(
                  right: 26,
                 top: 25,
                  child: Image.asset(
                    'assets/images/icons/playstation-logo.png',
                   
                    height: 50,
                    width: 50,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
