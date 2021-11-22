import 'package:get/get.dart';
import '../controllers/respond_battle_controller.dart';

class RespondAddGamerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RespondBattleController>(
      () => RespondBattleController(),
    );
  }
}
