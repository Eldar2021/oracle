import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';

class RestorePasswordController extends GetxController {
  final Rx<TextEditingController> emailPhone = TextEditingController().obs;

  void restore(String token) async {
    Get.toNamed(Routes.CODE);
    print(emailPhone.value.text);
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
