import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/service/hive_sevice.dart';

class ProfileController extends GetxController {
  late final UserModel? user;
  final HiveService hiveService = HiveService();

  final RxBool drawer = true.obs;

  Future<bool> getToken() async {
    bool token = await hiveService.yesOrNoToken();
    drawer.value = token;
    return token;
  }

  @override
  void onInit() {
    try {
      user = Get.arguments[0];
    } catch (e) {
      user = userModel1;
    }
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
