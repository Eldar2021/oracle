import 'package:flutter/material.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/drawer_menu.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Assets.backgroundDraver),
          ),
        ),
        child: DrawerMenu(),
      ),
    );
  }
}
