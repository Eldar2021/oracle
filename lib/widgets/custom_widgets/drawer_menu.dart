import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/drawer_list_tile.dart';
import 'custom_elevared_button.dart';

class DrawerMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0, bottom: 50.0),
          child: ListTile(
            leading: Image.asset(Assets.userDota),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text("${userModel1.name}",
                      style: Get.textTheme.subtitle2!),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text("      •      ${userModel1.nickName}",
                      style: Get.textTheme.subtitle2!),
                )
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(Assets.drawerNavMoney),
                SizedBox(width: 5),
                Text(
                  "Баланс 750 сом",
                  style: Get.textTheme.caption,
                ),
                SizedBox(width: 5),
                CustomElevatedButton(
                  text: "Пополнить",
                  fontSize: 9.0,
                  function: () {},
                  width: 80.0,
                  height: 25.0,
                ),
              ],
            ),
          ),
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavBattle),
          title: "Создать сражение",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {
            Get.toNamed(Routes.CREATE_BATTLE);
          },
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavBattle),
          title: "Мои сражения",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {},
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavNotification),
          title: "Уведомления",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {},
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavHelp),
          title: "Помощь",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {},
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavAnswers),
          title: "Вопросы и ответы",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {},
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavAbout),
          title: "О приложении",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {},
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavIdentity),
          title: "Идентификация",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: DrawerListTile(
            leading: SvgPicture.asset(Assets.drawerNavExit),
            title: "Выйти",
            style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
