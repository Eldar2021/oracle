import 'package:get/get.dart';
import 'package:oracle/app/modules/create_battle/controllers/add_gamer_controller.dart';
import 'package:oracle/app/modules/create_battle/controllers/battle_format_controller.dart';

class AddGamerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BattleFormatController>(
      () => BattleFormatController(),
    );
  }
}
