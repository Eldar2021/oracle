import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import '../controllers/create_battle_controller.dart';

class PublishGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateBattleController>(
      () => CreateBattleController(),
    );
  }
}