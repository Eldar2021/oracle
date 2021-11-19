import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/service/hive_sevice.dart';

class BattleDetailController extends GetxController {
  final count = 0.obs;
  late final Battle battle;
  final HiveService hiveService = HiveService();
  final RxBool isToken = true.obs;
  final ScrollController scrollController = ScrollController();
  final RxBool visible = true.obs;

  Future<bool> getToken() async {
    bool token = await hiveService.yesOrNoToken();
    isToken.value = token;
    return token;
  }

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

  void respond() async {
    await getToken();
    if (isToken.value == false) {
      Get.snackbar("Не авторизованный", "авторизация кыл бир тууган");
    } else {
      Get.toNamed(Routes.RESPOND_BATTLE);
    }
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

  void increment() => count.value++;
}
