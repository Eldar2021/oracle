import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/home/controllers/home_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/drawer_sidebar.dart';
import 'package:oracle/widgets/list_builder/play_list_builder.dart';

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
      body: Obx(
        () {
          if (controller.playList.isEmpty) {
            return buildCircularProgress();
          } else {
            return PlayListBuilder(playList: controller.playList);
          }
        },
      ),
      drawer: NavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.LOGIN);
        },
      ),
    );
  }

  Center buildCircularProgress() => Center(child: CircularProgressIndicator());
}

