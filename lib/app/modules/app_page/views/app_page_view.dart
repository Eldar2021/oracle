import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import '../controllers/app_page_controller.dart';

class AppPageView extends GetView<AppPageController> {
  final AppPageController controller = Get.put(AppPageController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gamer X",
      locale: Get.deviceLocale,
      getPages: AppPages.routes,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: MyColors.backgroundColor),
        scaffoldBackgroundColor: MyColors.backgroundColor,
        textTheme: TextTheme(),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: MyColors.textFieldBgColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: MyColors.bottomNavBgColor,
        ),
      ),
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
