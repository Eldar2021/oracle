import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:oracle/service/hive_sevice.dart';

class AuthPhoneController extends GetxController {
  final HiveService hiveService = HiveService();

  final Rx<TextEditingController> phone = TextEditingController().obs;
  final Rx<TextEditingController> password = TextEditingController().obs;

  void addToken(String token) async {
    await hiveService.addToken(token);
    print(phone.value.text);
    print(password.value.text);
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
