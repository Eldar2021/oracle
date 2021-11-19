import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2,
      width: Get.width,
      child: Divider(
        color: MyColors.grayTextColor,
        height: 1,
        thickness: 1.0,
      ),
    );
  }
}
