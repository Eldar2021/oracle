import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/service/hive_sevice.dart';

class RegisterController extends GetxController {
  final HiveService hiveService = HiveService();

  final Rx<TextEditingController> phone = TextEditingController().obs;
  final Rx<TextEditingController> email = TextEditingController().obs;
  final Rx<TextEditingController> nickName = TextEditingController().obs;
  final Rx<TextEditingController> password = TextEditingController().obs;
  final Rx<TextEditingController> repeatPassword = TextEditingController().obs;

  void register(String token) async {
    await hiveService.addToken(token);
    print(phone.value.text);
    print(email.value.text);
    print(nickName.value.text);
    print(password.value.text);
    print(repeatPassword.value.text);
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