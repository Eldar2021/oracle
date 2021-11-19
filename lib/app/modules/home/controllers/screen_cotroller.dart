import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/battle/views/battle_view.dart';
import 'package:oracle/app/modules/home/views/home_view.dart';
import 'package:oracle/app/modules/play/views/play_view.dart';
import 'package:oracle/app/modules/profile/views/profile_view.dart';
import 'package:oracle/service/hive_sevice.dart';

class ScreenController extends GetxController {
  final HiveService hiveService = HiveService();
  final RxInt pageIndex = 0.obs;

  RxList<Widget> items = [
    HomeView(),
    PlayView(),
    BattleView(),
    ProfileView(),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    ;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void bottomPageController(int index) {
    pageIndex.value = index;
  }
}
