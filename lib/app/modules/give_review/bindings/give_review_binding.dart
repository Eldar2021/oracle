import 'package:get/get.dart';

import '../controllers/give_review_controller.dart';

class GiveReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GiveReviewController>(
      () => GiveReviewController(),
    );
  }
}
