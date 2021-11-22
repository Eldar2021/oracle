import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import '../controllers/app_page_controller.dart';

class AppPageView extends StatefulWidget {
  const AppPageView({Key? key}) : super(key: key);

  @override
  _AppPageViewState createState() => _AppPageViewState();
}

class _AppPageViewState extends State<AppPageView> {
  final AppPageController controller = Get.put(AppPageController());

  @override
  initState() {
    super.initState();
    eldar();
  }

  Future<void> eldar() async {
    await Future.delayed(Duration(seconds: 1));
    await controller.yesToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "LOGO",
          style: TextStyle(
            color: MyColors.whiteColor,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
