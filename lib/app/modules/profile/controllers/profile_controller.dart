import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class ProfileController extends GetxController {
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

  Color percentColor(double percent) {
    if (percent > 0 && percent < 30) {
      return MyColors.redColor;
    } else if (percent > 30 && percent < 50) {
      return MyColors.orangeColor;
    } else if (percent > 50 && percent < 70) {
      return MyColors.greenColor;
    } else if (percent > 70 && percent < 100) {
      return MyColors.purpleColor;
    } else {
      return MyColors.winFlagColor;
    }
  }
}
