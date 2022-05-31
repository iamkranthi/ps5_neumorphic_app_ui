import 'package:flutter/material.dart';
import '../screens/game_screen.dart';
import '../screens/mouse_screen.dart';
import '../screens/settings_screen.dart';

class IconsWidget extends StatefulWidget {
  const IconsWidget({Key? key}) : super(key: key);

  @override
  State<IconsWidget> createState() => _IconsWidgetState();
}

class _IconsWidgetState extends State<IconsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          InkWell(
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                height: 50,
                child: Image.asset('assets/images/settings.png'),
              ),
            ),
          ),
          const SizedBox(
            width: 35,
          ),
          InkWell(
            onTap: () {},
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                splashColor: Colors.lightBlueAccent,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  height: 55,
                  child: Image.asset('assets/images/gamepad.png'),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              splashColor: Colors.lightBlueAccent,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const GameScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                height: 55,
                child: Image.asset('assets/images/game_screen.png'),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              splashColor: Colors.lightBlueAccent,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MouseScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                height: 55,
                child: Image.asset('assets/images/mouse.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
