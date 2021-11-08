

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class UserPhoneTlWhatsApp extends StatelessWidget {
  const UserPhoneTlWhatsApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.only(top: 18, bottom: 15),
      decoration: BoxDecoration(
        color: MyColors.buttonBgColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                SvgPicture.asset(Assets.userUserPhone),
                const SizedBox(height: 6.0),
                Text(
                  "Телефон",
                  style: Get.textTheme.caption!
                      .copyWith(color: MyColors.userPhoneColor),
                ),
              ],
            ),
          ),
          Container(
            width: 2,
            height: 40,
            color: MyColors.backgroundColor,
          ),
          Expanded(
            child: Column(
              children: [
                SvgPicture.asset(Assets.userUserTl),
                const SizedBox(height: 6.0),
                Text(
                  "Telegram",
                  style: Get.textTheme.caption!
                      .copyWith(color: MyColors.userPhoneColor),
                ),
              ],
            ),
          ),
          Container(
            width: 2,
            height: 40,
            color: MyColors.backgroundColor,
          ),
          Expanded(
            child: Column(
              children: [
                SvgPicture.asset(Assets.userUserWhatsApp),
                const SizedBox(height: 6.0),
                Text(
                  "WhatsApp",
                  style: Get.textTheme.caption!
                      .copyWith(color: MyColors.userPhoneColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
