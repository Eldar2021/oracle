import 'package:get/get.dart';
import 'package:oracle/app/data/models/play_model/play_models.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/service/hive_sevice.dart';

class HomeController extends GetxController {
  final HiveService hiveService = HiveService();

  final RxList<Play> playList = RxList<Play>([]);
  final RxBool drawer = true.obs;

  void goDetail(Play item) {
    Get.toNamed(Routes.PLAY_DETAIL, arguments: [item]);
  }

  Future<bool> getToken() async {
    bool token = await hiveService.yesOrNoToken();
    drawer.value = token;
    return token;
  }

  @override
  void onInit() {
    super.onInit();
    playList.value = plays;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
