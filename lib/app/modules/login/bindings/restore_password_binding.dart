import 'package:get/get.dart';
import 'package:oracle/app/modules/login/controllers/restore_password_controller.dart';

class RestorePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestorePasswordController>(
      () => RestorePasswordController(),
    );
  }
}