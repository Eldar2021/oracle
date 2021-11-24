import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_divider.dart';

class PreviewNameCategoryTime extends StatelessWidget {
  const PreviewNameCategoryTime({
    Key? key,
    required this.name,
    this.category,
  }) : super(key: key);

  final String name;
  final String? category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: Get.textTheme.subtitle1!.copyWith(height: 1.5)),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())}",
              style: Get.textTheme.caption!.copyWith(
                color: MyColors.grayWhiteColor,
              ),
            ),
            Text(
              "Категория “${category?? "Dota 2"}”",
              style: Get.textTheme.caption!.copyWith(
                color: MyColors.categoryTextColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 18.0),
        CustomDivider(),
      ],
    );
  }
}
