import 'package:get/get.dart';
import '../../../data/models/battle_model/battle_model.dart';
import '../../app_page/controllers/app_page_controller.dart';
import 'package:oracle/service/hive_sevice.dart';

class BattleController extends GetxController {
  final HiveService hiveService = HiveService();
  final AppPageController appController = Get.find();

  late final List<Battle>? listBattles;
  final RxBool isToken = true.obs;

  @override
  void onInit() {
    isToken.value = appController.token.value;
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
