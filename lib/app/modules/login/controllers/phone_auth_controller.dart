import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../app_page/controllers/app_page_controller.dart';

class AuthPhoneController extends GetxController {
  final AppPageController appController = Get.find();

  final Rx<TextEditingController> phone = TextEditingController().obs;
  final Rx<TextEditingController> password = TextEditingController().obs;

  void addToken(String token) async {
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
