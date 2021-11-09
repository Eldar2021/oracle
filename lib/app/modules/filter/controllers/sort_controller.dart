import 'package:get/get.dart';

class SortController extends GetxController {
  final count = 0.obs;
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
  void selectedSort(String sort)async{
    typeSort.value = sort;
  }
}
