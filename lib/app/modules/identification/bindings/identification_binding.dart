import 'package:get/get.dart';

import '../controllers/identification_controller.dart';

class IdentificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IdentificationController>(
      () => IdentificationController(),
    );
  }
}
