import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/generated/assets.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.width * 0.5,
      child: Image.asset(
        Assets.gameImagesDota2,
        fit: BoxFit.cover,
      ),
    );
  }
}