import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:oracle/app/modules/create_battle/controllers/publish_game_controller.dart';

class PublishGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PublishGameController>(
      () => PublishGameController(),
    );
  }
}