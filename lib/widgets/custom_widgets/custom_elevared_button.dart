import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.function,
    this.height = 52,
    this.width = 184,
    this.text = "Войти",
    this.borderRadius = 16.0,
    this.bgColor = MyColors.elevatedButtonBgColor,
    this.fontSize,
    Key? key,
  }) : super(key: key);

  final String text;
  final Function function;
  final double height;
  final double width;
  final double borderRadius;
  final Color bgColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("$text",
          style: Get.textTheme.subtitle1!.copyWith(fontSize: fontSize ?? null)),
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: () {
        function();
      },
    );
  }
}
