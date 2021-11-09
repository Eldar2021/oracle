import 'package:get/get.dart';

import '../controllers/battle_detail_controller.dart';

class BattleDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BattleDetailController>(
      () => BattleDetailController(),
    );
  }
}
