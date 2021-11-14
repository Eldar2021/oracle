import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/profile/widgets/settings_text_field.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../controllers/change_password_controller.dart';

class ChangedPasswordView extends GetView<ChangePasswordController> {
  const ChangedPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: _buildBody(),
          ),
        ),
      ),
    );
  }

  Column _buildBody() {
    return Column(
      children: [
        SettingTextField(
          text: "Старый пароль",
          textEditingController: controller.lastPassword.value,
          hintText: "Введите старый пароль",
        ),
        SettingTextField(
          text: "Новый пароль",
          textEditingController: controller.newPassword.value,
          hintText: "Введите новый пароль",
        ),
        SettingTextField(
          text: "Повторите новый пароль",
          textEditingController: controller.repeatNewPassword.value,
          hintText: "Повторите новый пароль",
        ),
        CustomElevatedButton(
          text: "Сохранить",
          function: () {},
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Смена пароля"),
      centerTitle: true,
    );
  }
}
