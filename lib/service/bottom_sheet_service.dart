import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class BottomSheetService {
  static Future<void> bottomSheetImage({
    required Function gallery,
    required Function camera,
  }) {
    return Get.bottomSheet(
      Container(
        height: 100,
        margin: const EdgeInsets.only(top: 2),
        padding: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            color: MyColors.backgroundColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            border: Border.all()),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  gallery(true);
                },
                child: Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.collections,
                        size: 50,
                        color: MyColors.greenColor,
                      ),
                      Text("Галерея"),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  camera(false);
                },
                child: Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.camera_alt,
                        size: 50,
                        color: MyColors.greenColor,
                      ),
                      Text("Камера"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: MyColors.whiteColor,
      barrierColor: MyColors.backgroundColor.withOpacity(0.7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    );
  }
}
