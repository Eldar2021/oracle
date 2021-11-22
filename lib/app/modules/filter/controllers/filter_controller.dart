import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/routes/app_pages.dart';

class FilterController extends GetxController {
  final RxString typeSort = "Сортировать".obs;
  final RxList categories = <String>[].obs;
  final RxList typeBattles = <String>[].obs;
  final Rx<TextEditingController> minRate = TextEditingController().obs;
  final Rx<TextEditingController> maxRate = TextEditingController().obs;
  final battles = RxList<Battle>([]);

  void listBattles() async {
    battles.value = listBattle2;
    Get.toNamed(Routes.FILTER_PLAYS_VIEW, arguments: [battles]);
  }

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
