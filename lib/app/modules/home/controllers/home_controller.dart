import 'package:get/get.dart';
import 'package:oracle/app/data/models/play_model/play_models.dart';
import 'package:oracle/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final RxList<Play> playList = RxList<Play>([]);

  void goDetail(Play item) {
    Get.toNamed(Routes.PLAY_DETAIL, arguments: [item]);
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
