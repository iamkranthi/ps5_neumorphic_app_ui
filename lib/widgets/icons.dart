import 'package:ps5_neumorphic_app_ui/imports.dart';
import 'package:flutter/material.dart';
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
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PlayStationScreen()));
            },
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
                height: 60,
                child: Image.asset('assets/images/icons/playstation_icon.png'),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
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
                      builder: (context) => const ControllerScreen()));
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
                  child: Image.asset('assets/images/icons/gamepad.png'),
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
                    builder: (context) => const CameraScreen()));
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
                child: Image.asset('assets/images/icons/camera.png'),
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
                child: Image.asset('assets/images/icons/headphones.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
