import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/login/views/login_view.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/like_dislike_widget.dart';
import 'package:oracle/widgets/list_builder/user_play_list_widget.dart';
import 'package:oracle/widgets/custom_widgets/rating_copleted_widget.dart';
import 'package:oracle/widgets/list_builder/review_list_widget.dart';
import '../widgets/user_description.dart';
import '../widgets/user_email_photo_list_widget.dart';
import '../widgets/user_ph_tl_wh_widget.dart';
import '../widgets/user_profile_photo.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return controller.appController.token.value == true
            ? Scaffold(
                appBar: buildAppBar(),
                body: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: double.infinity,
                    ),
                    child: buildPadding(),
                  ),
                ),
              )
            : LoginView();
      },
    );
  }

  Padding buildPadding() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          UserProfilePhoto(user: controller.user),
          const SizedBox(height: 20),
          LikeDislike(
            user: controller.user,
            how: "bosh",
          ),
          const SizedBox(height: 30),
          UserPhoneTlWhatsApp(
            ph: controller.user.phone,
            tl: controller.user.telegram,
            wh: controller.user.whatsApp,
          ),
          const SizedBox(height: 30),
          UserDescription(user: controller.user),
          const SizedBox(height: 60),
          RatingsCompleted(user: controller.user),
          const SizedBox(height: 50),
          ReviewsList(
            reviews: controller.user.reviews ?? [],
            controller: controller,
          ),
          const SizedBox(height: 40),
          UserEmailPhoneList(),
          UserPlaysList(
            controller: controller,
            plays: controller.user.plays ?? [],
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${controller.user.name}  ${controller.user.nickName}"),
          SizedBox(width: 8),
          controller.user.identification == true
              ? SvgPicture.asset(Assets.componentsFlagStar)
              : Container(),
        ],
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(Assets.componentsSetting),
          onPressed: () {
            Get.toNamed(Routes.SETTINGS);
          },
        ),
      ],
      centerTitle: true,
    );
  }
}
