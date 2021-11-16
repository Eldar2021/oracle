import 'package:get/get.dart';
import 'package:oracle/app/modules/respond/controllers/respond_add_gamer_controller.dart';

class RespondAddGamerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RespondAddGamerController>(
      () => RespondAddGamerController(),
    );
  }
}
