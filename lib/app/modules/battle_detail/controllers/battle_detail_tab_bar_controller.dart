import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/service/get_dialog_service.dart';

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

  void cancelBattle(){
     DialogService.customDialogCancelBattle(exit: (){
       Get.offNamed(Routes.SCREEN);
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
