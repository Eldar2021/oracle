import 'package:get/get.dart';

import '../controllers/respon_controller.dart';

class ResponBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResponController>(
      () => ResponController(),
    );
  }
}
