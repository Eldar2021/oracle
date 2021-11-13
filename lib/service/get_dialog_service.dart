import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';

class DialogService {
  static void customDialog({
    String? icon,
    String? text,
    String? description,
    String? buttonText,
    required Function function,
  }) {
    Get.defaultDialog(
      title: text ?? "",
      backgroundColor: MyColors.backgroundColor,
      content: Column(
        children: [
          SvgPicture.asset(Assets.componentsConfirm),
          const SizedBox(height: 30.0),
          Text(
            "${description ?? ""}",
            textAlign: TextAlign.center,
            style: Get.textTheme.subtitle1,
          ),
          const SizedBox(height: 30.0),
        ],
      ),
      confirm: Column(
        children: [
          CustomElevatedButton(
            function: () {
              function();
            },
            text: buttonText ?? "Войти",
          ),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  static void customDialogExit() {
    Get.defaultDialog(
      title: "",
      backgroundColor: MyColors.backgroundColor,
      content: Column(
        children: [
          SvgPicture.asset(
            Assets.drawerNavExit,
            color: MyColors.ratingStarColor,
          ),
          SizedBox(height: 30.0),
          Text(
            "Вы уверены что хотите выйти из профиля?",
            textAlign: TextAlign.center,
          ),
        ],
      ),
      cancelTextColor: MyColors.whiteColor,
      confirmTextColor: MyColors.whiteColor,
      confirm: InkWell(
        onTap: () {
          print("Выйти");
        },
        child: Container(
          width: 120.0,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: MyColors.elevatedButtonBgColor,
          ),
          child: Text(
            "Выйти",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      cancel: InkWell(
        onTap: () {
          print("Отменить");
        },
        child: Container(
          width: 120.0,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: MyColors.elevatedButtonBgColor,
            ),
          ),
          child: Text(
            "Отменить",
            textAlign: TextAlign.center,
            style: Get.textTheme.subtitle1!.copyWith(
              color: MyColors.grayTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
