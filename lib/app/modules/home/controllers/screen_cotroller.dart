import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/battle/bindings/battle_binding.dart';
import 'package:oracle/app/modules/battle/views/battle_view.dart';
import 'package:oracle/app/modules/home/bindings/home_binding.dart';
import 'package:oracle/app/modules/home/views/home_view.dart';
import 'package:oracle/app/modules/play/bindings/play_binding.dart';
import 'package:oracle/app/modules/play/views/play_view.dart';
import 'package:oracle/app/modules/profile/bindings/profile_binding.dart';
import 'package:oracle/app/modules/profile/views/profile_view.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/service/hive_sevice.dart';

class ScreenController extends GetxController {
  final HiveService hiveService = HiveService();
  final RxInt currentIndex = 0.obs;

  final pages = <String>[
    Routes.HOME,
    Routes.PLAY,
    Routes.BATTLE,
    Routes.PROFILE,
  ];

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == Routes.HOME)
      return GetPageRoute(
        settings: settings,
        page: () => HomeView(),
        binding: HomeBinding(),
      );

    if (settings.name == Routes.PLAY)
      return GetPageRoute(
        settings: settings,
        page: () => PlayView(),
        binding: PlayBinding(),
      );

    if (settings.name == Routes.BATTLE)
      return GetPageRoute(
        settings: settings,
        page: () => BattleView(),
        binding: BattleBinding(),
      );
    if (settings.name == Routes.PROFILE)
      return GetPageRoute(
        settings: settings,
        page: () => ProfileView(isToken: true),
        binding: ProfileBinding(),
      );

    return null;
  }

  void changePage(int index) {
    print(index);
    currentIndex.value = index;
    if (index == 0) {
      Get.toNamed(Routes.HOME, id: 0);
    } else if (index == 1) {
      Get.toNamed(Routes.PLAY, id: 0);
    } else if (index == 2) {
      Get.toNamed(Routes.BATTLE, id: 0);
    } else if (currentIndex.value == 3) {
      //print(Get.arguments[userModel2]);
      Get.toNamed(Routes.PROFILE, id: 0,  arguments: [userModel1]);
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
