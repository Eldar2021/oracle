import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/home/controllers/screen_cotroller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/app/modules/home/widgets/drawer_widgets/drawer_sidebar.dart';

class ScreenView extends GetView<ScreenController> {
  final ScreenController controller = Get.put(ScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(0),
        initialRoute: Routes.HOME,
        onGenerateRoute: controller.onGenerateRoute,
      ),
      drawer: NavBar(userModel: userModel1),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
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
            controller.changePage(val);
          },
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
