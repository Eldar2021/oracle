import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';

class SelectPerformerController extends GetxController {
  late final UserModel user;
  late final double rate;

  @override
  void onInit() {
    user = Get.arguments[0];
    rate = Get.arguments[1];
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
