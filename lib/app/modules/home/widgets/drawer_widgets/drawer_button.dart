import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed(Routes.BALANCE);
      },
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 5, right: 6, left: 6),
        decoration: BoxDecoration(
            color: MyColors.linkTextColor,
            borderRadius: BorderRadius.circular(16.0)),
        child: Center(
          child: Text(
            "Пополнить",
            style: Get.textTheme.caption!.copyWith(fontSize: 10),
          ),
        ),
      ),
    );
  }
}
