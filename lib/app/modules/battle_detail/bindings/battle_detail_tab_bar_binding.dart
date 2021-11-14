import 'package:get/get.dart';
import 'package:oracle/app/modules/battle_detail/controllers/battle_detail_tab_bar_controller.dart';

class BattleDetailTabBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BattleDetailTabBarController>(
      () => BattleDetailTabBarController(),
    );
  }
}
