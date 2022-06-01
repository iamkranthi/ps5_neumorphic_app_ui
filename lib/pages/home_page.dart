import 'package:flutter/material.dart';
import 'package:ps5_neumorphic_app_ui/imports.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Background(height: height * 0.8, width: width * 0.4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Appbar(firstIcon: Icons.menu, secondIcon:  Icons.shopping_cart_outlined,),
              const SizedBox(height: 30),
              const TitleText(titletext: 'Featured', subtitletext: 'Products', choosecolor: ConstantColors.blackcolor,),
              const SizedBox(height: 40),
              const IconsWidget(),
              const SizedBox(height: 30),
              ItemsWidgets(
                items: controllers,
                screenHeight: height,
                screenWidth: width,
              ),
              const Spacer(),
              const BottomBar(),
              const SizedBox(height: 30),
            ],
          )
        ],
      ),
    );
  }
}
