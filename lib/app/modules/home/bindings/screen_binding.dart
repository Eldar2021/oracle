import 'package:get/get.dart';
import '../controllers/screen_cotroller.dart';

class ScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ScreenController>(
      ScreenController(),
    );
  }
}
