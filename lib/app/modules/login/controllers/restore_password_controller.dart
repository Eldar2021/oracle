import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/service/hive_sevice.dart';

class RestorePasswordController extends GetxController {
  final HiveService hiveService = HiveService();

  final Rx<TextEditingController> emailPhone = TextEditingController().obs;

  void restore(String token) async {
    await hiveService.addToken(token);
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
