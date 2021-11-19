import 'package:get/get.dart';
import 'package:oracle/app/data/models/notification_model/notification_model.dart';

class NotificationController extends GetxController {

  RxList notListController = <NotificationModel>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    notListController.value = notList;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
