import 'package:get/get.dart';
import 'package:oracle/app/data/models/play_model/play_models.dart';
import 'package:oracle/app/modules/app_page/controllers/app_page_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/service/hive_sevice.dart';

class HomeController extends GetxController {
  final HiveService hiveService = HiveService();
  final AppPageController appController = Get.find();

  final RxList<Play> playList = RxList<Play>([]);

  void goDetail(Play item) {
    Get.toNamed(Routes.PLAY_DETAIL, arguments: [item]);
  }

  void exit(){
    appController.clearToken();
    Get.offAllNamed(Routes.LOGIN);
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
