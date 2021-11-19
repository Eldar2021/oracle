import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/filter/controllers/filter_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class SelectedContainer extends StatelessWidget {
  const SelectedContainer({
    required this.text,
    required this.onTab,
    this.controller,
    Key? key,
  }) : super(key: key);

  final String text;
  final Function onTab;
  final FilterController? controller;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTab(text);
      },
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 18, bottom: 18),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: MyColors.backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: Get.textTheme.bodyText1),
            controller != null
                ? Obx(() {
                    return Visibility(
                      visible:
                          controller?.typeSort.value == text ? true : false,
                      child: SvgPicture.asset(Assets.arrayTrue),
                    );
                  })
                : Container(),
          ],
        ),
      ),
    );
  }
}
