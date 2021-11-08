import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/home/controllers/screen_cotroller.dart';
import 'package:oracle/generated/assets.dart';

class ScreenView extends GetView<ScreenController> {
  final ScreenController controller = Get.put(ScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.items[controller.pageIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.bottomNavBottom1),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.bottomNavBottom2),
              label: 'Игры',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.bottomNavBottom3),
              label: 'Сражения',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.bottomNavBottom4),
              label: 'Профиль',
            ),
          ],
          currentIndex: controller.pageIndex.value,
          onTap: (val) async {
            controller.bottomPageController(val);
          },
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
