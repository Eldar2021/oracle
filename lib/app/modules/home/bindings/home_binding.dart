import 'package:get/get.dart';
import 'package:oracle/app/modules/home/controllers/screen_cotroller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScreenController>(
      () => ScreenController(),
    );
  }
}
