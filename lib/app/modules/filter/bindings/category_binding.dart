import 'package:get/get.dart';
import '../controllers/filter_controller.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FilterController>(
      () => FilterController(),
    );
  }
}
