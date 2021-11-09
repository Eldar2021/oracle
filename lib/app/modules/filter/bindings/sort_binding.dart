import 'package:get/get.dart';
import 'package:oracle/app/modules/filter/controllers/filter_controller.dart';

class SortBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FilterController>(
      () => FilterController(),
    );
  }
}
