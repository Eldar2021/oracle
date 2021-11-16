import 'package:get/get.dart';
import 'package:oracle/app/modules/battle_detail/controllers/battle_detail_status_controller.dart';

class BattleDetailStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BattleDetailStatusController>(
      () => BattleDetailStatusController(),
    );
  }
}
