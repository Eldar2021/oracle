
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class UserEmailPhoneList extends StatelessWidget {
  const UserEmailPhoneList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Подтверждены"),
          const SizedBox(height: 30),
          EmailRow(text: "Электронная почта", icon: Assets.userUserEmail),
          EmailRow(text: "Steam профиль", icon: Assets.userUserStreamProfile),
          EmailRow(
              text: "Телефонный номер",
              icon: Assets.userUserPhone,
              color: MyColors.whiteColor),
        ],
      ),
    );
  }
}

class EmailRow extends StatelessWidget {
  const EmailRow({
    required this.text,
    required this.icon,
    this.color,
    Key? key,
  }) : super(key: key);

  final String text;
  final String icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          SvgPicture.asset(icon, color: color ?? null),
          SizedBox(width: 20.0),
          Text(
            text,
            style:
            Get.textTheme.caption!.copyWith(color: MyColors.grayWhiteColor),
          )
        ],
      ),
    );
  }
}