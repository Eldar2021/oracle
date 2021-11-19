import 'package:get/get.dart';
import 'package:oracle/app/modules/home/controllers/play_detail_controller.dart';

class PlayDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayDetailController>(
      () => PlayDetailController(),
    );
  }
}
