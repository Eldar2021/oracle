import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import '../controllers/app_page_controller.dart';

class AppPageView extends GetView<AppPageController> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      text: "LOGO",
      textStyle: TextStyle(
        color: MyColors.whiteColor,
        fontSize: 40,
      ),
      // pageRouteTransition: PageRouteTransition.SlideTransition,
      navigateRoute: controller.initialRoute(),
    );

  }
}
