import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class UserProfilePhoto extends StatelessWidget {
  const UserProfilePhoto({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              ListTileColumn(
                text: "Сражений",
                icon: Assets.bottomNavBottom3,
                value: "${user.battles}",
              ),
              const SizedBox(height: 30.0),
              ListTileColumn(
                text: "Процент побед",
                icon: Assets.componentsPercent,
                value: "60",
                color: MyColors.percentBgColor,
              ),
            ],
          ),
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Container(
              child: Image.asset(user.photoProfile),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              ListTileColumn(
                text: "Побед",
                icon: Assets.componentsWinFlag,
                value: "${user.wins}",
                color: MyColors.winFlagColor,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              const SizedBox(height: 30.0),
              ListTileColumn(
                text: "Поражений",
                icon: Assets.componentsDefeatFlag,
                value: "${user.defeats}",
                color: MyColors.defeatFlagColor,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ],
          ),
        )
      ],
    );
  }
}


class ListTileColumn extends StatelessWidget {
  const ListTileColumn({
    Key? key,
    required this.icon,
    required this.text,
    required this.value,
    this.color = MyColors.whiteColor,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  final String icon;
  final String text;
  final String value;
  final Color color;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(text, style: Get.textTheme.caption),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            SvgPicture.asset(
              icon,
              width: 10.0,
            ),
            const SizedBox(width: 5),
            Text(value, style: Get.textTheme.caption!.copyWith(color: color))
          ],
        ),
      ],
    );
  }
}
