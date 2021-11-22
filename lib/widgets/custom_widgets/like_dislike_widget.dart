import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/constants/color_constants.dart';

class LikeDislike extends StatelessWidget {
  const LikeDislike({
    Key? key,
    required this.user,
    this.like,
    this.disLike,
    required this.how,
    this.mainAxisAlignment = MainAxisAlignment.center,
  }) : super(key: key);

  final UserModel user;
  final MainAxisAlignment mainAxisAlignment;
  final Function? like;
  final Function? disLike;
  final String how;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        InkWell(
          onTap: () {
            like != null ? like!(true) : null;
          },
          // child: SvgPicture.asset(
          //   Assets.componentsLike,
          //   color: how == "like" ? MyColors.greenColor : null,
          // ),
          child: Icon(
            Icons.thumb_up_rounded,
            size: 17,
            color: how == "like" ? MyColors.greenColor : MyColors.grayWhiteColor,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          "${user.like}",
          style: Get.textTheme.caption!.copyWith(color: MyColors.winFlagColor),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () {
            disLike != null ? disLike!(false) : null;
          },
          // child: SvgPicture.asset(
          //   Assets.componentsDislike,
          //   color: how == "dislike" ? MyColors.redColor : null,
          // ),
          child: Icon(
            Icons.thumb_down_rounded,
            size: 17,
            color: how == "dislike" ? MyColors.redColor : MyColors.grayWhiteColor,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          "${user.dislike}",
          style: Get.textTheme.caption!.copyWith(color: MyColors.dislikeColor),
        )
      ],
    );
  }
}
