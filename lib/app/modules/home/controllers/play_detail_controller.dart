import 'package:get/get.dart';
import 'package:oracle/app/data/models/play_model/play_models.dart';

class PlayDetailController extends GetxController {
  late final Play play;

  @override
  void onInit() {
    play = Get.arguments[0];
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
