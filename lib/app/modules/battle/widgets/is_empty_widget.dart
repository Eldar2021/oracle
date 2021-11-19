import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class IsEmptyWidget extends StatelessWidget {
  const IsEmptyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.componentsBattleBg,
            color: MyColors.buttonBgColor,
          ),
          const SizedBox(height: 50.0),
          Text(
            "Вы пока не участвовали в сражениях",
            style: Get.textTheme.subtitle1!.copyWith(
              color: MyColors.buttonBgColor,
            ),
          ),
          SizedBox(height: Get.width * 0.6)
        ],
      ),
    );
  }
}
