import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_page/controllers/app_page_controller.dart';

class CodeController extends GetxController {
  final AppPageController appController = Get.find();

  final Rx<TextEditingController> code = TextEditingController().obs;

  void restore(String token) async {
    appController.addToken(token);
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
