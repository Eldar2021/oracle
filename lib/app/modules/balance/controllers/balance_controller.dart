import 'package:get/get.dart';
import 'package:oracle/app/modules/app_page/controllers/app_page_controller.dart';

class BalanceController extends GetxController {
  final AppPageController appPageController = AppPageController();
  late final String text;
  final count = 0.obs;

  @override
  void onInit() {
    try{
      text  = Get.arguments[0];
    }catch(e){
      text = "";
    }
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
