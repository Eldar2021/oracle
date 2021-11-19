import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/app/modules/home/widgets/drawer_widgets/drawer_list_tile.dart';
import 'package:oracle/service/get_dialog_service.dart';
import 'drawer_user_card.dart';

class DrawerMenu extends StatelessWidget {
  final UserModel userModel;
  DrawerMenu({required this.userModel}): super();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerUserCard(userModel: userModel),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavBattle),
          title: "Создать сражение",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {
            Get.toNamed(Routes.CREATE_BATTLE);
          },
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavNotification),
          title: "Мои сражения",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {
            Get.toNamed(Routes.BATTLE);
          },
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.componentsBgNotification, width: 15),
          title: "Уведомления",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {
            Get.toNamed(Routes.NOTIFICATION);
          },
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavHelp),
          title: "Помощь",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {
            Get.toNamed(Routes.HELP);
          },
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavAnswers),
          title: "Вопросы и ответы",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {
            Get.toNamed(Routes.ANSWER);
          },
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavAbout),
          title: "О приложении",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {
            Get.toNamed(Routes.ABOUT);
          },
        ),
        DrawerListTile(
          leading: SvgPicture.asset(Assets.drawerNavIdentity),
          title: "Идентификация",
          style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
          onTap: () {
            Get.toNamed(Routes.IDENTIFICATION);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: DrawerListTile(
            leading: SvgPicture.asset(Assets.drawerNavExit),
            title: "Выйти",
            style: Get.textTheme.subtitle2!.copyWith(height: 0.1),
            onTap: () {
              DialogService.customDialogExit();
            },
          ),
        ),
      ],
    );
  }
}
