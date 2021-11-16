import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oracle/generated/assets.dart';

class DescriptionCheck extends StatelessWidget {
  const DescriptionCheck({
    Key? key,
    this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(Assets.arrayTrue),
        const SizedBox(width: 12),
        Expanded(child: Text(text ?? "", style: Get.textTheme.bodyText2!)),
      ],
    );
  }
}
