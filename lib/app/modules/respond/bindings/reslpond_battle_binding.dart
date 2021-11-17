import 'package:get/get.dart';
import 'package:oracle/app/modules/respond/controllers/respond_battle_controller.dart';


class RespondBattleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RespondBattleController>(
      () => RespondBattleController(),
    );
  }
}