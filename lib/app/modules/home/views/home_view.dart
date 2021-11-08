import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 user_profile_review
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/home/controllers/home_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/battle_list_view.dart';

class HomeView extends GetView<HomeController> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.FILTER);
            },
            icon: SvgPicture.asset(Assets.componentsFilter),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Obx(
          () {
            if (controller.battles.isEmpty) {
              return buildCircularProgress();
            } else {
              return BattlesListBuilder(controller: controller);
            }
          },
        ),

import 'package:oracle/widgets/custom_widgets/drawer_sidebar.dart';

class HomeView extends StatelessWidget {
  //final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(),
      body: Center(
        child: Text("home"),
        main
      ),
    );
  }

  Center buildCircularProgress() => Center(child: CircularProgressIndicator());
}
