import 'package:get/get.dart';
import '../../../data/models/battle_model/battle_model.dart';
import '../../app_page/controllers/app_page_controller.dart';

class BattleController extends GetxController {
  final AppPageController appController = Get.find();

  late final List<Battle>? listBattles;

  @override
  void onInit() {
    try {
      listBattles = Get.arguments[0];
    } catch (e) {
      listBattles = listBattle1;
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
