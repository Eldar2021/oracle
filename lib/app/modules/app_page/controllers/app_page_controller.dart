import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/home/views/screen_view.dart';
import 'package:oracle/app/modules/login/views/login_view.dart';
import 'package:oracle/service/hive_sevice.dart';

class AppPageController extends GetxController {
  final HiveService hiveService = HiveService();
  final RxBool token = false.obs;

  void addToken(String token) async {
    changeTokenTrue();
    await hiveService.addToken(token);
  }

  void clearToken() async {
    changeTokenFalse();
    await hiveService.clearToken();
  }

  void changeTokenTrue() {
    token.value = true;
  }

  void changeTokenFalse() {
    token.value = false;
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

  Widget initialRoute() {
    if (token.value == false) {
      return LoginView();
    } else if (token.value == true) {
      return ScreenView();
    } else {
      return ScreenView();
    }
  }
}
