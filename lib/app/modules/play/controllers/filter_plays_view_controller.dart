import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';

class FilterPlaysViewController extends GetxController {
  final battles = RxList<Battle>([]);

  @override
  void onInit() {
    battles.value = Get.arguments[0];
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
