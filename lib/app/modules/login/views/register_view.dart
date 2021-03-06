import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/login/controllers/register_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/service/snack_bar_service.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/link_text_widget.dart';

class RegisterView extends GetView<RegisterController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: _buildAppBar(),
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
        //Spacer(),
        Text("Регистрация", style: Get.textTheme.headline6),
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
          controller: controller.email.value,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "Введите эл. почту",
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
          controller: controller.nickName.value,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "Введите игровой ник",
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
        const SizedBox(height: 15.0),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller.repeatPassword.value,
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Повторите пароль",
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
          width: 231.0,
          text: "Регистрация",
          function: () {
            if (controller.password.value.text !=
                controller.repeatPassword.value.text) {
              SnackBarService.noEqualPasswords();
            } else if (_formKey.currentState!.validate()) {
              controller.register("eldar");
            } else {
              print('Form is invalid');
            }
          },
        ),
        Spacer(),
        LinkText(
          text1: "У вас есть профиль? ",
          text2: "Войти",
          styletex1:
              Get.textTheme.bodyText1!.copyWith(color: MyColors.grayTextColor),
          styletex2:
              Get.textTheme.bodyText1!.copyWith(color: MyColors.linkTextColor),
          function: () {
            Get.toNamed(Routes.LOGIN);
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

  AppBar _buildAppBar() => AppBar();
}
