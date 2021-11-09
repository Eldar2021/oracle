import 'package:get/get.dart';

class FilterController extends GetxController {
  final count = 0.obs;
  final RxString typeBattle = "1х1".obs;
  final RxString typeSort = "По актуальности".obs;
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

  void selectedBattle(String battle) async {
    typeBattle.value = battle;
  }
  void selectedSort(String sort)async{
    typeSort.value = sort;
  }
}
