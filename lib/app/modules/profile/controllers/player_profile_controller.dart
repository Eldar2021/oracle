import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/app_page/controllers/app_page_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/service/snack_bar_service.dart';

class PlayerProfileController extends GetxController {
  final AppPageController appController = Get.find();
  late final UserModel user;
  final RxInt reviews = 2.obs;
  final RxBool changeReview = false.obs;
  final RxString likeDislike = "bosh".obs;

  void changeReviewsPlus(int value) {
    reviews.value = value;
    changeReview.value = true;
  }

  void changeReviewsMinus(int value) {
    reviews.value = value;
    changeReview.value = false;
  }

  void giveReviews() {
    if (appController.token.value == false) {
      SnackBarService.noTokenSnackBar();
    } else {
      Get.toNamed(Routes.GIVE_REVIEW);
    }
  }

  String likeDislikeFunc(bool how) {
    if (appController.token.value == false) {
      SnackBarService.noTokenSnackBar();
    } else {
      if (how == false) {
        likeDislike.value = "dislike";
        return likeDislike.value;
      } else if (how == true) {
        likeDislike.value = "like";
        return likeDislike.value;
      } else {
        likeDislike.value = "bosh";
        return likeDislike.value;
      }
    }
    return "eldiiar";
  }

  @override
  void onInit() {
    user = Get.arguments[0];
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
