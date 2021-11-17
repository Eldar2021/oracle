import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class DocumentImage extends StatelessWidget {
  const DocumentImage({
    Key? key,
    required this.fileName,
    required this.function,
  }) : super(key: key);

  final File fileName;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        width: Get.width,
        height: Get.width * 0.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              MyColors.backgroundColor.withOpacity(0.3),
              BlendMode.dstATop,
            ),
            fit: BoxFit.cover,
            image: FileImage(fileName),
          ),
        ),
        child: Center(
          child: InkWell(
            onTap: () {
              function();
            },
            child: SvgPicture.asset(Assets.arrayBackx),
          ),
        ),
      ),
    );
  }
}
