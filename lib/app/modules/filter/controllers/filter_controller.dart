import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FilterController extends GetxController {
  final RxString typeSort = "Сортировать".obs;
  final RxList categories = <String>[].obs;
  final RxList typeBattles = <String>[].obs;
  final Rx<TextEditingController> minRate = TextEditingController().obs;
  final Rx<TextEditingController> maxRate = TextEditingController().obs;

  void addCategory(String category) {
    categories.add(category);
  }

  void removeCategory(String category) {
    categories.remove(category);
  }

  void addFormatBattle(String battle) {
    typeBattles.add(battle);
  }

  void removedFormatBattle(String battle) {
    typeBattles.remove(battle);
  }

  void selectedSort(String sort) async {
    typeSort.value = sort;
  }

  void clear() {
    typeBattles.clear();
    categories.clear();
    minRate.value.text = "";
    maxRate.value.text = "";
    typeSort.value = "Сортировать";
  }

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
}
