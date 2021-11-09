import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/battle/views/battle_view.dart';
import 'package:oracle/app/modules/home/views/home_view.dart';
import 'package:oracle/app/modules/play/views/play_view.dart';
import 'package:oracle/app/modules/profile/views/profile_view.dart';

class ScreenController extends GetxController {

  RxInt pageIndex = 0.obs;

  RxList<Widget> items = [
    HomeView(),
    PlayView(),
    BattleView(),
    ProfileView(user: userModel1),
  ].obs;

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

  void bottomPageController(int index){
    pageIndex.value = index;
  }

}