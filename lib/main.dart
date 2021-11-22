import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:oracle/app/modules/app_page/bindings/app_page_binding.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'app/routes/app_pages.dart';
import 'constants/color_constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Hive.initFlutter();
  } else {
    final appDirectory = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDirectory.path);
  }
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: MyColors.backgroundColor,
      systemNavigationBarColor: MyColors.backgroundColor,
  ));
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gamer X",
      locale: Get.deviceLocale,
      getPages: AppPages.routes,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: MyColors.backgroundColor),
        scaffoldBackgroundColor: MyColors.backgroundColor,
        highlightColor: MyColors.backgroundColor,
        splashColor: MyColors.backgroundColor,
        textTheme: TextTheme(),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: MyColors.buttonBgColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: MyColors.bottomNavBgColor,
          selectedItemColor: MyColors.moneyTextColor,
          selectedIconTheme: IconThemeData(color: MyColors.moneyTextColor),
          selectedLabelStyle: TextStyle(fontSize: 13.0, height: 1.5),
          unselectedLabelStyle: TextStyle(fontSize: 13.0, height: 1.5),
        ),
      ),
      initialRoute: Routes.APP_PAGE,
      initialBinding: AppPageBinding(),
    ),
  );
}
