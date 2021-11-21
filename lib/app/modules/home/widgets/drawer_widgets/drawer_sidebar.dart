import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/app/modules/home/widgets/drawer_widgets/drawer_menu.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';

class NavBar extends StatelessWidget {
  final bool drawer;
  final UserModel? userModel;

  NavBar({
    this.drawer = true,
    required this.userModel,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return drawer == false
        ? Drawer(
            child: Center(
              child: CustomElevatedButton(
                text: "Авторизуйтесь",
                width: 200,
                function: () {
                  Get.offAllNamed(Routes.LOGIN);
                },
              ),
            ),
          )
        : Drawer(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Assets.backgroundDraver),
                ),
              ),
              child: DrawerMenu(userModel: userModel!),
            ),
          );
  }
}
