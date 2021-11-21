import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class TextFieldWithText extends StatelessWidget {
  const TextFieldWithText({
    required this.text,
    required this.controller,
    this.type = TextInputType.number,
    Key? key,
  }) : super(key: key);
  final String text;
  final TextEditingController controller;
  final TextInputType type;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 18, bottom: 18),
        margin: EdgeInsets.only(bottom: 10, top: 15),
        decoration: BoxDecoration(
          color: MyColors.buttonBgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(text, style: Get.textTheme.bodyText2),
            ),
            Expanded(
              flex: 4,
              child: TextField(
                keyboardType: type,
                controller: controller,
                decoration: new InputDecoration.collapsed(
                  hintText: "",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
