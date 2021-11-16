import 'package:get/get.dart';
import 'package:oracle/app/modules/battle_detail/controllers/select_performer_controller.dart';

class SelectPerformerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectPerformerController>(
      () => SelectPerformerController(),
    );
  }
}
