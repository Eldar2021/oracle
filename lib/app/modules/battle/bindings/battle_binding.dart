import 'package:get/get.dart';

import '../controllers/battle_controller.dart';

class BattleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BattleController>(
      () => BattleController(),
    );
  }
}
