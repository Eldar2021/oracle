import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/login/controllers/phone_auth_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/link_text_widget.dart';

class AuthPhoneView extends GetView<AuthPhoneController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: Get.height,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: _buildBody(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Авторизация через телефон", style: Get.textTheme.headline6),
        const SizedBox(height: 30.0),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller.phone.value,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            hintText: "Ввведите номер",
          ),
          validator: (val) {
            if (val!.isEmpty) {
              return "Это поле должно быть заполнено";
            } else {
              return null;
            }
          },
        ),
        const SizedBox(height: 15.0),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller.password.value,
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Введите пароль",
          ),
          validator: (val) {
            if (val!.isEmpty) {
              return "Это поле должно быть заполнено";
            } else {
              return null;
            }
          },
        ),
        const SizedBox(height: 20.0),
        CustomElevatedButton(
          function: () async {
            if (_formKey.currentState!.validate()) {
              print('Form is valid');
              controller.authenticate("eldar");
            } else {
              print('Form is invalid');
            }
          },
        ),
        Spacer(),
        LinkText(
          text1: "Нету профиля? ",
          text2: "Зарегистрироваться",
          styletex1:
              Get.textTheme.bodyText1!.copyWith(color: MyColors.grayTextColor),
          styletex2:
              Get.textTheme.bodyText1!.copyWith(color: MyColors.linkTextColor),
          function: () {
            Get.toNamed(Routes.REGISTER);
          },
        ),
        const SizedBox(height: 10.0),
        LinkText(
          text1: "Забыли пароль? ",
          text2: "Восстановить",
          styletex1:
              Get.textTheme.bodyText1!.copyWith(color: MyColors.grayTextColor),
          styletex2:
              Get.textTheme.bodyText1!.copyWith(color: MyColors.linkTextColor),
          function: () {
            Get.toNamed(Routes.RESTORE_PASSWORD);
          },
        ),
        Spacer()
      ],
    );
  }
}
