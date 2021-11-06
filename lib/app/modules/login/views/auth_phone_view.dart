import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/login/controllers/phone_auth_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/link_text_widget.dart';

class AuthPhoneView extends GetView<AuthPhoneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: Get.height,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Spacer(),
                Text("Авторизация через телефон",
                    style: Get.textTheme.headline6),
                const SizedBox(height: 30.0),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "Ввведите номер",
                  ),
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Введите пароль",
                  ),
                ),
                const SizedBox(height: 20.0),
                CustomElevatedButton(
                  function: () {},
                ),
                Spacer(),
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
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
