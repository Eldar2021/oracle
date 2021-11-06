import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/authenticate_button_widget.dart';
import 'package:oracle/widgets/custom_widgets/link_text_widget.dart';

class AuthenticateView extends StatelessWidget {
  const AuthenticateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Авторизация", style: Get.textTheme.headline6),
            const SizedBox(height: 30.0),
            AuthenticateButton(
              icon: "assets/icons/authenticate/phone.svg",
              text: "Войти через номер телефона",
              onTab: () async{
                Get.toNamed(Routes.HOME);
              },
            ),
            AuthenticateButton(
              icon: "assets/icons/authenticate/facebook.svg",
              text: "Войти через Facebook",
              onTab: () {},
            ),
            AuthenticateButton(
              icon: "assets/icons/authenticate/google.svg",
              text: "Войти через Google",
              onTab: () {},
            ),
            const SizedBox(height: 15.0),
            LinkText(
              text1: "Нажимая «Войти» вы соглашаетесь с ",
              text2: "правилами и условиями",
              text3: " использования сервиса",
              styletex1: Get.textTheme.caption!
                  .copyWith(color: MyColors.grayTextColor),
              styletex2: Get.textTheme.caption!.copyWith(
                color: MyColors.linkTextColor,
                decoration: TextDecoration.underline,
              ),
              styletex3: Get.textTheme.caption!
                  .copyWith(color: MyColors.grayTextColor),
              function: () {
                print("eldar");
              },
            ),
            const SizedBox(height: 75.0),
            LinkText(
              text1: "Нету профиля? ",
              text2: "Зарегистрироваться",
              styletex1: Get.textTheme.bodyText1!
                  .copyWith(color: MyColors.grayTextColor),
              styletex2: Get.textTheme.bodyText1!
                  .copyWith(color: MyColors.linkTextColor),
              function: () {},
            ),
            const SizedBox(height: 10.0),
            LinkText(
              text1: "Забыли пароль? ",
              text2: "Восстановить",
              styletex1: Get.textTheme.bodyText1!
                  .copyWith(color: MyColors.grayTextColor),
              styletex2: Get.textTheme.bodyText1!
                  .copyWith(color: MyColors.linkTextColor),
              function: () {
                print("object");
              },
            ),
            const SizedBox(height: 50.0),
            Text(
              "Пропустить вход",
              style: Get.textTheme.bodyText1!
                  .copyWith(color: MyColors.grayTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
