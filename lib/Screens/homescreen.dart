import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Widgets/widgets.dart';
import '../resources/color_palette.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Facebook',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colorpalette.facebookblue,
            letterSpacing: -1.2,
          ),
        ),
        actions: [
          IconsWidget(iconData: Icons.add, onpressed: () {}, size: 16),
          IconsWidget(iconData: Icons.search, onpressed: () {}, size: 16),
          IconsWidget(
              iconData: MdiIcons.facebookMessenger, onpressed: () {}, size: 16),
        ],
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.black,
            thickness: 0.3,
          ),
          Newpost(),
        ],
      ),
    );
  }
}
