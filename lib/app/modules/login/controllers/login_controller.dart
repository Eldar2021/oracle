import 'package:get/get.dart';
import '../../app_page/controllers/app_page_controller.dart';

class LoginController extends GetxController {
  final AppPageController appController = Get.find();

  void clearToken() async {
    appController.clearToken();
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
