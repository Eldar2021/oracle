import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/home/controllers/screen_cotroller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class ScreenView extends GetView<ScreenController> {
  final ScreenController controller = Get.put(ScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.items[controller.currentIndex.value]),
      //drawer: NavBar(userModel: userModel1),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: MyColors.backgroundColor,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.bottomNavBottom1),
              label: 'Главная',
              activeIcon: SvgPicture.asset(Assets.bottomNavBottom1,
                  color: MyColors.moneyTextColor),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.bottomNavBottom2),
              label: 'Игры',
              activeIcon: SvgPicture.asset(Assets.bottomNavBottom2,
                  color: MyColors.moneyTextColor),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.bottomNavBottom3),
              activeIcon: SvgPicture.asset(Assets.bottomNavBottom3,
                  color: MyColors.moneyTextColor),
              label: 'Сражения',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.bottomNavBottom4),
              activeIcon: SvgPicture.asset(Assets.bottomNavBottom4,
                  color: MyColors.moneyTextColor),
              label: 'Профиль',
            ),
          ],
          currentIndex: controller.currentIndex.value,
          onTap: (val) {
            controller.bottomPageController(val);
          },
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
