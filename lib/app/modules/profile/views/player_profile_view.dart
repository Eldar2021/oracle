import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/widgets/list_builder/player_play_list_builder.dart';
import 'package:oracle/widgets/list_builder/player_reviews_list_builder.dart';
import '../widgets/user_description.dart';
import '../widgets/user_email_photo_list_widget.dart';
import '../widgets/user_ph_tl_wh_widget.dart';
import '../widgets/user_profile_photo.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/like_dislike_widget.dart';
import 'package:oracle/widgets/custom_widgets/rating_copleted_widget.dart';
import '../controllers/player_profile_controller.dart';

class PlayerProfileView extends GetView<PlayerProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }

  Padding buildPadding() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          UserProfilePhoto(user: controller.user),
          const SizedBox(height: 20),
          Obx(() {
            return LikeDislike(
              user: controller.user,
              how: controller.likeDislike.value,
              like: (how) {
                controller.likeDislikeFunc(how);
                print("like");
              },
              disLike: (how) {
                controller.likeDislikeFunc(how);
                print("dislike");
              },
            );
          }),
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
          PlayerReviewsList(
            reviews: controller.user.reviews ?? [],
            controller: controller,
          ),
          const SizedBox(height: 40),
          UserEmailPhoneList(),
          PlayerPlaysList(
              controller: controller, plays: controller.user.plays ?? []),
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
      centerTitle: true,
    );
  }
}
