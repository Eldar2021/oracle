import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class ImagePickerContainer extends StatelessWidget {
  const ImagePickerContainer({
    required this.text,
    required this.hinText,
    required this.function,
    Key? key,
  }) : super(key: key);
  final String text;
  final String hinText;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(height: 10.0),
        InkWell(
          onTap: () {
            function();
          },
          child: Container(
            padding: EdgeInsets.only(
                top: 30.0, bottom: 30.0, right: 20.0, left: 20.0),
            decoration: BoxDecoration(
              color: MyColors.buttonBgColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Text(
                    hinText,
                    style: Get.textTheme.subtitle2!
                        .copyWith(color: MyColors.grayTextColor),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SvgPicture.asset(Assets.componentsAdd),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
