import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';

class BattleDetailStatusController extends GetxController {
  late final Battle battle;

  @override
  void onInit() {
    battle = Get.arguments[0];
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
