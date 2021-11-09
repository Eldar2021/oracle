import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class TextFieldWithText extends StatelessWidget {
  const TextFieldWithText({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 18, bottom: 18),
        margin: EdgeInsets.only(bottom: 10, top: 15),
        decoration: BoxDecoration(
          color: MyColors.textFieldBgColor,
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
