import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/home/controllers/home_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/app/modules/home/widgets/drawer_widgets/drawer_sidebar.dart';
import 'package:oracle/widgets/list_builder/play_list_builder.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Obx(
        () {
          if (controller.playList.isEmpty) {
            return buildCircularProgress();
          } else {
            return PlayListBuilder(playList: controller.playList);
          }
        },
      ),
      drawer: Obx(() {
       // controller.getToken();
        return NavBar(drawer: controller.drawer.value, userModel: userModel1);
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Get.toNamed(Routes.PROFILE, arguments: [userModel1]);
          Get.toNamed(Routes.LOGIN);
          // UrlService.launchWhatsApp("+996990039301", "");
          // UrlService.launchURL("https://www.youtube.com/");
          // UrlService.launchTelegram("ak_bulak");
        },
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            Get.toNamed(Routes.FILTER);
          },
          icon: SvgPicture.asset(Assets.componentsFilter),
        ),
      ],
    );
  }

  Center buildCircularProgress() => Center(child: CircularProgressIndicator());
}
