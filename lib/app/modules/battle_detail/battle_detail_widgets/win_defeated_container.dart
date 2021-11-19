import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WinDefeatedContainer extends StatelessWidget {
  const WinDefeatedContainer({
    Key? key,
    required this.name,
    required this.rate,
    required this.bgColor,
  }) : super(key: key);

  final String name;
  final String rate;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.396,
      padding: EdgeInsets.only(left: 10, right: 10, top: 14, bottom: 14),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(5.0),
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
    );
  }
}
