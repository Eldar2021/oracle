import 'package:get/get.dart';

import '../controllers/answer_controller.dart';

class AnswerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnswerController>(
      () => AnswerController(),
    );
  }
}
