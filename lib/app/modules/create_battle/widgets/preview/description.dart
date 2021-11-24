import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class PreviewDescriptions extends StatelessWidget {
  const PreviewDescriptions({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: Get.textTheme.caption!.copyWith(color: MyColors.grayWhiteColor, height: 1.3),
    );
  }
}