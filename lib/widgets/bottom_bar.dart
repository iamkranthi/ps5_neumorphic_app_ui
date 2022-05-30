import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ps5_neumorphic_app_ui/colors/constantcolors.dart';
import 'package:ps5_neumorphic_app_ui/items/bottom_bar_item.dart';
import 'package:ps5_neumorphic_app_ui/screens/settings_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  void onItemTapped(int tappedItemIndex) {
    setState(() {
      selectedIndex = tappedItemIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ClayContainer(
        height: 70,
        borderRadius: 24,
        depth: 40,
        color: ConstantColors.cardcolor,
        spread: 6,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BarItem(
                icon: CupertinoIcons.home,
                tite: 'Home',
                isSelected: selectedIndex == 0,
                onTaped: () {
                  onItemTapped(0);
                },
              ),
              BarItem(
                icon: CupertinoIcons.person,
                tite: 'Profile',
                isSelected: selectedIndex == 1,
                onTaped: () {
                  onItemTapped(1);
                },
              ),
              InkWell(
                onTap: () {
                 
                },
                child: BarItem(
                  icon: CupertinoIcons.settings,
                  tite: 'Settings',
                  isSelected: selectedIndex == 2,
                  onTaped: () {
                    onItemTapped(2);
                  },
                ),
              ),
              BarItem(
                icon: CupertinoIcons.bookmark_fill,
                tite: 'Wishlist',
                isSelected: selectedIndex == 3,
                onTaped: () {
                  onItemTapped(3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
