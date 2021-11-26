import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:oracle/service/get_dialog_service.dart';
import 'package:oracle/service/snack_bar_service.dart';

class GiveReviewController extends GetxController {
  final Rx<TextEditingController> review = TextEditingController().obs;
  final RxDouble val1 = 0.0.obs;
  final RxDouble val2 = 0.0.obs;
  final RxDouble val3 = 0.0.obs;

  void give() {
    if (val1.value == 0.0 &&
        val2.value == 0.0 &&
        val3.value == 0.0 &&
        review.value.text.isEmpty) {
      SnackBarService.nullPhoto("Маалымат жок",
          "Эч кандай комментарий берилген эмес жана рейтингтер да берилген эмес!");
    } else {
      print(val1.value);
      print(val2.value);
      print(val3.value);
      print(review.value.text);
      DialogService.customDialog(
        buttonText: "Вернуться назад",
        function: () {
          Get.back();
          Get.back();
        },
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
      );
    }
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

  void giveReview() {}
}
