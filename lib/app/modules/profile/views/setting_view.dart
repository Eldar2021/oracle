import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/profile/widgets/setting_row.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/service/get_dialog_service.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SettingRow(
              text: "Личная информация",
              icon: Assets.componentsUser,
              function: () {
                Get.toNamed(Routes.PERSONAL_INFO);
              },
            ),
            SettingRow(
              text: "Смена пароля",
              icon: Assets.componentsKey,
              function: () {
                Get.toNamed(Routes.CHANGE_PASSWORD);
              },
            ),
            SettingRow(
              text: "Выйти из профиля",
              icon: Assets.drawerNavExit,
              function: () {
                DialogService.customDialogExit();
              },
            ),
          ],
        ),
      ),
    );
  }
}
