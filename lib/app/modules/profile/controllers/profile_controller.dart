import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/app_page/controllers/app_page_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/service/hive_sevice.dart';

class ProfileController extends GetxController {
  final HiveService hiveService = HiveService();
  final AppPageController appController = Get.find();

  late final UserModel user;

  final RxInt reviews = 2.obs;
  final RxBool changeReview = false.obs;
  final RxBool isToken = true.obs;

  void changeReviewsPlus(int value) {
    reviews.value = value;
    changeReview.value = true;
  }

  void changeReviewsMinus(int value) {
    reviews.value = value;
    changeReview.value = false;
  }

  void giveReviews() {
    // if (drawer.value == false) {
    //   Get.snackbar(
    //     "Авторизация болгон эмес",
    //     "Сын пикир калтыруу учун авторизациядан отунуз",
    //   );
    // } else {
      Get.toNamed(Routes.GIVE_REVIEW);
    // }
  }

  @override
  void onInit() {
    isToken.value = appController.token.value;
    try {
      user = Get.arguments[0];
    } catch (e) {
      user = userModel2;
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
