
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class LikeDislike extends StatelessWidget {
  const LikeDislike({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.componentsLike),
        const SizedBox(width: 5),
        Text(
          "${user.like}",
          style: Get.textTheme.caption!.copyWith(color: MyColors.winFlagColor),
        ),
        const SizedBox(width: 10),
        SvgPicture.asset(Assets.componentsDislike),
        const SizedBox(width: 5),
        Text(
          "${user.dislike}",
          style: Get.textTheme.caption!.copyWith(color: MyColors.dislikeColor),
        )
      ],
    );
  }
}
