import 'package:get/get.dart';
import '../controllers/create_battle_controller.dart';

class AddGamerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateBattleController>(
      () => CreateBattleController(),
    );
  }
}
