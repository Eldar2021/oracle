import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../data/models/user_model/user_model.dart';
import '../controllers/home_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/generated/assets.dart';
import '../widgets/drawer_widgets/drawer_sidebar.dart';
import 'package:oracle/widgets/list_builder/play_list_builder.dart';

class HomeView extends GetView<HomeController> {
  final HomeController controller = Get.put(HomeController());

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
        return NavBar(
          drawer: controller.appController.token.value,
          userModel: userModel2,
          exit: () {
            controller.exit();
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Get.toNamed(Routes.BALANCE, arguments: ["На вашем балансе недостаточно средств для создания сражения"]);
          //  Get.toNamed(Routes.PLAYER_PROFILE, arguments: [userModel2]);
          // Get.toNamed(Routes.LOGIN);
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
