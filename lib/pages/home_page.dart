import 'package:flutter/material.dart';
import 'package:ps5_neumorphic_app_ui/items/item_widget.dart';
import 'package:ps5_neumorphic_app_ui/items/items.dart';
import 'package:ps5_neumorphic_app_ui/widgets/icons.dart';
import 'package:ps5_neumorphic_app_ui/widgets/title_text.dart';
import '../widgets/appbar.dart';
import '../widgets/background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Background(height: height * 0.8 , width: width * 0.4),
          Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Appbar(),
              const SizedBox(height: 30),
              const TitleText(),
              const SizedBox(height: 40),
              const IconsWidget(),
              const SizedBox(height: 30),
              ItemsWidgets(
                items: controllers,
                screenHeight: height,
                screenWidth: width,
              ),
            ],
          )
        ],
      ),
    );
  }
}
