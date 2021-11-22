import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class CommandEmptyPlayer extends StatelessWidget {
  const CommandEmptyPlayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.RESPOND_ADD_GAMER);
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 25,
          bottom: 25,
          left: 20,
          right: 20,
        ),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: MyColors.backgroundColor,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: MyColors.grayTextColor,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Добавить игрока"),
            SvgPicture.asset(Assets.componentsAdd),
          ],
        ),
      ),
    );
  }
}
