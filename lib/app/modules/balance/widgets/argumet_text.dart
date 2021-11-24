import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class ArgumentsText extends StatelessWidget {
  const ArgumentsText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 60, right: 55, left: 55),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Get.textTheme.bodyText2!.copyWith(
            color: MyColors.defeatFlagColor,
            height: 1.6,
          ),
        ),
      ),
    );
  }
}
