import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class MyExpandableText extends StatelessWidget {
  const MyExpandableText({
    required this.questions,
    required this.answer,
    Key? key,
  }) : super(key: key);
  final String questions;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      header: Text(
        questions,
        style: Get.textTheme.subtitle1,
      ),
      collapsed: Container(),
      expanded: Column(
        children: [
          SizedBox(height: 15.0),
          Text(
            answer,
            style: Get.textTheme.caption!.copyWith(
              color: MyColors.grayTextColor,
            ),
          ),
        ],
      ),
      theme: ExpandableThemeData(
        iconColor: MyColors.whiteColor,
        hasIcon: true,
        tapBodyToCollapse: true,
        //iconPlacement: ExpandablePanelIconPlacement.
      ),
    );
  }
}
