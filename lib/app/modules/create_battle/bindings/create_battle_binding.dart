import 'package:get/get.dart';

import '../controllers/create_battle_controller.dart';

class CreateBattleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateBattleController>(
      () => CreateBattleController(),
    );
  }
}
