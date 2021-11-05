import 'package:get/get.dart';

import '../controllers/app_page_controller.dart';

class AppPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppPageController>(
      () => AppPageController(),
    );
  }
}
