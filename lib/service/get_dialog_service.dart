import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';

void customDialog({
  String? icon,
  String? text,
  String? description,
  String? buttonText,
  required Function function,
}) {
  Get.defaultDialog(
    title: text ?? "",
    backgroundColor: MyColors.backgroundColor,
    content: Column(
      children: [
        SvgPicture.asset(Assets.componentsConfirm),
        const SizedBox(height: 30.0),
        Text(
          "${description ?? ""}",
          textAlign: TextAlign.center,
          style: Get.textTheme.subtitle1,
        ),
        const SizedBox(height: 30.0),
      ],
    ),
    confirm: Column(
      children: [
        CustomElevatedButton(
          function: () {
            function();
          },
          text: buttonText ?? "Войти",
        ),
        const SizedBox(height: 30.0),
      ],
    ),
  );
}