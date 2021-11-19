import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/app/modules/login/widgets/authenticate_button_widget.dart';
import 'package:oracle/widgets/custom_widgets/link_text_widget.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final LoginController controller = Get.put(LoginController());
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
              onTab: () async {
                Get.toNamed(Routes.AUTH_PHONE);
              },
            ),
            const SizedBox(height: 25.0),
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
              function: () {
                Get.toNamed(Routes.REGISTER);
              },
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
                Get.toNamed(Routes.RESTORE_PASSWORD);
              },
            ),
            const SizedBox(height: 50.0),
            InkWell(
              onTap: () async{
                controller.clearToken();
                Get.toNamed(Routes.SCREEN);
              },
              child: Text(
                "Пропустить вход",
                style: Get.textTheme.bodyText1!.copyWith(
                  color: MyColors.grayTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
