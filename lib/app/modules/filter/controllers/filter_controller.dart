import 'package:get/get.dart';

class FilterController extends GetxController {
  //TODO: Implement FilterController

  final count = 0.obs;
  final RxString typeBattle = "1х1".obs;
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
  void increment() => count.value++;

  void selectedBattle(String battle)async{
    typeBattle.value = battle;
  }
}
