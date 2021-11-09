import 'package:get/get.dart';
import 'package:oracle/app/modules/home/controllers/give_review_controller.dart';

class GiveReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GiveReviewController>(
      () => GiveReviewController(),
    );
  }
}
