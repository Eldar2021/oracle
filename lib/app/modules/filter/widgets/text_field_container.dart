import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/filter/controllers/filter_controller.dart';
import 'package:oracle/constants/color_constants.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    required this.text,
    required this.onTab,
    required this.onDoubleTap,
    this.icon,
    this.bgColor = MyColors.buttonBgColor,
    this.selected,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final String text;
  final String? icon;
  final Color bgColor;
  final Function onTab;
  final Function onDoubleTap;
  final bool? selected;
  final FilterController controller;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTab(text);
      },
      onDoubleTap: (){
        onDoubleTap(text);
      },
      child: Obx(
        () {
          return Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 18, bottom: 18),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: controller.typeBattles.contains(text) == true
                  ? MyColors.linkTextColor
                  : bgColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text, style: Get.textTheme.bodyText1),
                icon != null ? SvgPicture.asset(icon!) : Container(),
              ],
            ),
          );
        },
      ),
    );
  }
}
