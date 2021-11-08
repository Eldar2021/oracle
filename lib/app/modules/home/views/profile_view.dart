import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/home/controllers/profile_controller.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/like_dislike_widget.dart';
import 'package:oracle/widgets/custom_widgets/play_list_widget.dart';
import 'package:oracle/widgets/custom_widgets/rating_copleted_widget.dart';
import 'package:oracle/widgets/custom_widgets/review_list_widget.dart';
import 'package:oracle/widgets/custom_widgets/user_description.dart';
import 'package:oracle/widgets/custom_widgets/user_email_photo_list_widget.dart';
import 'package:oracle/widgets/custom_widgets/user_ph_tl_wh_widget.dart';
import 'package:oracle/widgets/custom_widgets/user_profile_photo.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({
    required this.user,
    Key? key,
  }) : super(key: key);
  final UserModel user;
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
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
          UserProfilePhoto(user: user),
          const SizedBox(height: 20),
          LikeDislike(user: user),
          const SizedBox(height: 30),
          UserPhoneTlWhatsApp(),
          const SizedBox(height: 30),
          UserDescription(user: user),
          const SizedBox(height: 60),
          RatingsCompleted(user: user),
          const SizedBox(height: 50),
          ReviewsList(reviews: reviews1),
          const SizedBox(height: 40),
          CustomElevatedButton(
            text: "Смотртеть все отзывы",
            width: 206,
            function: () {},
          ),
          const SizedBox(height: 40),
          UserEmailPhoneList(),
          PlaysList(controller: controller)
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${user.name}  ${user.nickName}"),
          SizedBox(width: 8),
          SvgPicture.asset(Assets.componentsFlagStar)
        ],
      ),
      centerTitle: true,
    );
  }
}
