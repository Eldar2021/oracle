import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/login/controllers/restore_password_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/link_text_widget.dart';

class RestorePasswordView extends GetView<RestorePasswordController> {
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
                Text("Восстановление пароля", style: Get.textTheme.headline6),
                const SizedBox(height: 30.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Ввведите номер телефона или эл. почту",
                  ),
                ),
                const SizedBox(height: 22.0),
                LinkText(
                  text1: "На данный номер телефона или почту будет\n",
                  text2: "отправлена ссылка для восстановления ",
                  text3: "пароля\nс дальнейшей инструкцией",
                  styletex1: Get.textTheme.caption!.copyWith(color: MyColors.grayTextColor),
                  styletex2: Get.textTheme.caption!.copyWith(color: MyColors.linkTextColor, height: 1.8),
                  styletex3: Get.textTheme.caption!.copyWith(color: MyColors.grayTextColor),
                  function: () {},
                ),
                const SizedBox(height: 25.0),
                CustomElevatedButton(
                  width: 292.0,
                  text: "Восстановить пароль",
                  function: () {},
                ),
                Spacer(),
                LinkText(
                  text1: "У вас есть профиль? ",
                  text2: "Войти",
                  styletex1: Get.textTheme.bodyText1!
                      .copyWith(color: MyColors.grayTextColor),
                  styletex2: Get.textTheme.bodyText1!
                      .copyWith(color: MyColors.linkTextColor),
                  function: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                ),
                const SizedBox(height: 10.0),
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
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
