import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import '../controllers/app_page_controller.dart';

class AppPageView extends GetView<AppPageController> {
  final AppPageController controller = Get.put(AppPageController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Бумеранг",
      locale: Get.deviceLocale,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: MyColors.backgraundColor,
          textTheme: TextTheme()),
      home: SplashScreenView(
        text: "LOGO",
        textStyle: TextStyle(
          color: MyColors.whiteColor,
          fontSize: 40,
        ),
        navigateRoute: controller.initialRoute(),
      ),
    );
  }
}
