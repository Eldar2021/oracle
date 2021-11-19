import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';

class BattleDetailTabBarController extends GetxController {
  late final Battle battle;
  final ScrollController scrollController = ScrollController();
  final RxBool visible = true.obs;

  void handleScroll(ScrollController _scrollController) async {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        toUp();
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        toBottom();
      }
    });
  }

  void toBottom() {
    visible.value = false;
    update();
  }

  void toUp() {
    visible.value = true;
    update();
  }

  @override
  void onInit() {
    battle = Get.arguments[0];
    super.onInit();
    handleScroll(scrollController);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    scrollController.removeListener(() {});
  }
}
