import 'package:flutter/material.dart';

import '../imports.dart';

class MouseScreen extends StatelessWidget {
  const MouseScreen({Key? key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Background(height: height * 0.4, width: width ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
             const SizedBox(height: 70),
             const Appbar(),
              Image.asset('assets/images/icon_images/ps5_icons.png'),
            ],
          ),
        ],
      ),
    );
  }
}
