import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class RowMoney extends StatelessWidget {
  const RowMoney({
    Key? key,
    required this.text,
    this.value,
  }) : super(key: key);

  final String text;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$text",
          style: Get.textTheme.bodyText1,
        ),
        Text(
          value ?? "",
          style: Get.textTheme.bodyText1!.copyWith(
            color: MyColors.moneyTextColor,
          ),
        )
      ],
    );
  }
}
