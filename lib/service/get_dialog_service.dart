import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:loading_indicator/loading_indicator.dart';
import '../widgets/custom_widgets/custom_elevared_button.dart';

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

  static void customDialogExit({
    required Function exit,
  }) {
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
          exit();
        },
        child: Container(
          width: 120.0,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: MyColors.linkTextColor,
          ),
          child: Text(
            "Выйти",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      cancel: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          width: 120.0,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: MyColors.linkTextColor,
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

  static void respondSuccess() {
    Get.defaultDialog(
      backgroundColor: MyColors.backgroundColor,
      title: "",
      content: Column(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: LoadingIndicator(
              indicatorType: Indicator.lineSpinFadeLoader,
              colors: [MyColors.ratingStarColor],
            ),
          ),
          const SizedBox(height: 40.0),
          Text("Ийгилуктуу аяктады"),
        ],
      ),
    );
  }

  static void createBattleSuccess() {
    Get.defaultDialog(
      barrierDismissible: false,
      backgroundColor: MyColors.backgroundColor,
      title: "",
      content: WillPopScope(
        onWillPop: () async => false,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SvgPicture.asset(
                Assets.drawerNavBattle,
                width: 25,
                color: MyColors.ratingStarColor,
              ),
              const SizedBox(height: 30.0),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30.0),
              CustomElevatedButton(
                  text: "На главную",
                  function: () {
                    Get.offAllNamed(Routes.SCREEN);
                  })
            ],
          ),
        ),
      ),
    );
  }

  static void loadingDialog() {
    Get.defaultDialog(
      backgroundColor: MyColors.backgroundColor,
      title: "",
      barrierDismissible: false,
      content: WillPopScope(
        onWillPop: () async => false,
        child: Column(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: LoadingIndicator(
                indicatorType: Indicator.lineSpinFadeLoader,
                colors: [MyColors.ratingStarColor],
              ),
            ),
            const SizedBox(height: 40.0),
            Text("Идет проверка документов"),
            const SizedBox(height: 20.0),
            CustomElevatedButton(
              function: () {
                Get.offAllNamed(Routes.SCREEN);
              },
              text:"На главную",
            )
          ],
        ),
      ),
    );
  }

  static void customDialogCancelBattle({
    required Function exit,
  }) {
    Get.defaultDialog(
      title: "",
      backgroundColor: MyColors.backgroundColor,
      content: Column(
        children: [
          SizedBox(height: 30.0),
          Text(
            "Вы действительно хотите\nотменить игру?",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.0),
        ],
      ),
      cancelTextColor: MyColors.whiteColor,
      confirmTextColor: MyColors.whiteColor,
      confirm: InkWell(
        onTap: () {
          exit();
        },
        child: Container(
          width: 120.0,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: MyColors.linkTextColor,
          ),
          child: Text(
            "Да",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      cancel: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          width: 120.0,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: MyColors.linkTextColor,
            ),
          ),
          child: Text(
            "Нет",
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
