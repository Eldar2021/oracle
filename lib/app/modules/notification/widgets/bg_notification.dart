import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class BgNotification extends StatelessWidget {
  const BgNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.componentsBgNotification,
            color: MyColors.grayTextColor,
          ),
          const SizedBox(height: 40.0),
          Text(
            "Список уведомлений пуст",
            style: Get.textTheme.subtitle1!.copyWith(
              color: MyColors.grayTextColor,
            ),
          )
        ],
      ),
    );
  }
}
