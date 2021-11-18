import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/service/hive_sevice.dart';

class CodeController extends GetxController {
  final HiveService hiveService = HiveService();

  final Rx<TextEditingController> code = TextEditingController().obs;

  void restore(String token) async {
    await hiveService.addToken(token);
    print(code.value.text);
  }

  final count = 0.obs;
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
  void increment() => count.value++;
}
