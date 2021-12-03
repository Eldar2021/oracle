import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/generated/assets.dart';
import 'drawer_button.dart';

class DrawerUserCard extends StatelessWidget {
  const DrawerUserCard({
    required this.userModel,
    Key? key,
  }) : super(key: key);
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, bottom: 50.0),
      child: ListTile(
        leading: Image.asset(
          userModel.photoProfile,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("${userModel.name}",
                style: Get.textTheme.subtitle2!),
            Text("  •  ${userModel.nickName}",
                style: Get.textTheme.subtitle2)
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 35),
                SvgPicture.asset(Assets.drawerNavMoney),
                SizedBox(width: 5),
                Text(
                  "Баланс ${userModel.money} сом",
                  style: Get.textTheme.caption,
                ),
              ],
            ),
            SizedBox(width: 15.0),
            DrawerButton(),
          ],
        ),
      ),
    );
  }
}