import 'package:get/get.dart';
import 'package:oracle/app/modules/create_battle/controllers/battle_format_controller.dart';


class BattleFormatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BattleFormatController>(
      () => BattleFormatController(),
    );
  }
}
