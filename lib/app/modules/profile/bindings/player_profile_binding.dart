import 'package:get/get.dart';

import '../controllers/player_profile_controller.dart';

class PlayerProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayerProfileController>(
      () => PlayerProfileController(),
    );
  }
}
