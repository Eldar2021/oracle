import 'package:get/get.dart';

class BattleFormatController extends GetxController {
  //TODO: Implement CreateBattleController

  final counList = 0.obs;
  final RxBool squadName = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void changeFormat(String format) {
    if (format == "1x1") {
      squadName.value = false;
      counList.value = 0;
    } else if (format == "2x2") {
      squadName.value = true;
      counList.value = 1;
    } else if (format == "3x3") {
      squadName.value = true;
      counList.value = 2;
    } else if (format == "4x4") {
      squadName.value = true;
      counList.value = 3;
    } else if (format == "5x5") {
      squadName.value = true;
      counList.value = 4;
    } else {
      squadName.value = false;
      counList.value = 0;
    }
  }
}
