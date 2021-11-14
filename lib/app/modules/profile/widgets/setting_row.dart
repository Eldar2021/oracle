import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class SettingRow extends StatelessWidget {
  const SettingRow({
    required this.text,
    required this.icon,
    required this.function,
    Key? key,
  }) : super(key: key);
  final String text;
  final String icon;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        padding: EdgeInsets.only(top: 25.0, bottom: 25.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: MyColors.grayTextColor),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(icon),
            SizedBox(width: 25.0),
            Text(text, style: Get.textTheme.subtitle2)
          ],
        ),
      ),
    );
  }
}
