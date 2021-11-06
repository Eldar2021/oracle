import 'package:get/get.dart';
import 'package:oracle/app/modules/login/controllers/phone_auth_controller.dart';

class AuthPhoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthPhoneController>(
      () => AuthPhoneController(),
    );
  }
}