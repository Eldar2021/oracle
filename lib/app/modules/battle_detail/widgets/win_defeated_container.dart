import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class WinDefeatedContainer extends StatelessWidget {
  const WinDefeatedContainer({
    Key? key,
    required this.name,
    required this.rate,
    required this.bgColor,
    required this.borderColor,
  }) : super(key: key);

  final String name;
  final String rate;
  final Color bgColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: Get.width * 0.396,
        padding: EdgeInsets.only(right: 10, left: 10, top: 14, bottom: 14),
        decoration: BoxDecoration(
          color: bgColor,
          border: Border(
           left: BorderSide(color: borderColor, width: 7),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                "${name}",
                overflow: TextOverflow.ellipsis,
                style: Get.textTheme.caption,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                "${rate}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.end,
                style: Get.textTheme.caption,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
