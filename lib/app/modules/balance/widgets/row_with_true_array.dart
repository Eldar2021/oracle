import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/generated/assets.dart';

class RowWithTrueArray extends StatelessWidget {
  const RowWithTrueArray({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SvgPicture.asset(Assets.arrayTrue),
        ),
        const SizedBox(width: 12.0),
        Expanded(
          child: Text(
            text,
            style: Get.textTheme.bodyText2!.copyWith(height: 1.7),
          ),
        )
      ],
    );
  }
}
