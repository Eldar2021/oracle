import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import '../controllers/app_page_controller.dart';

class AppPageView extends StatefulWidget {
  const AppPageView({Key? key}) : super(key: key);

  @override
  _AppPageViewState createState() => _AppPageViewState();
}

class _AppPageViewState extends State<AppPageView> {
  final AppPageController controller = Get.put(AppPageController());

  @override
  initState(){
    // TODO: implement initState
    super.initState();
    eldar();
  }
  Future<void> eldar() async {
    await Future.delayed(Duration(seconds: 1));
    await controller.yesToken();
  }

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


// class AppPageView extends  {
//   final AppPageController controller = Get.put(AppPageController());
//
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreenView(
//       text: "LOGO",
//       textStyle: TextStyle(
//         color: MyColors.whiteColor,
//         fontSize: 40,
//       ),
//       // pageRouteTransition: PageRouteTransition.SlideTransition,
//       navigateRoute: controller.initialRoute(),
//     );
//   }
// }
