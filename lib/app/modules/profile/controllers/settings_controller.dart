import 'package:get/get.dart';
import 'package:oracle/app/modules/app_page/controllers/app_page_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';

class SettingsController extends GetxController {
  final AppPageController appController = Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  void exit(){
    appController.clearToken();
    Get.offAllNamed(Routes.LOGIN);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
