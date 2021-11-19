import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/service/hive_sevice.dart';

class BattleController extends GetxController {
  final HiveService hiveService = HiveService();
  late final List<Battle>? listBattles;
  final count = 0.obs;
  final RxBool drawer = true.obs;

  Future<bool> getToken() async {
    bool token = await hiveService.yesOrNoToken();
    drawer.value = token;
    return token;
  }

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

  void increment() => count.value++;
}
