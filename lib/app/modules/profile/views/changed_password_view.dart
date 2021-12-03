import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import '../widgets/settings_text_field.dart';
import 'package:oracle/service/snack_bar_service.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../controllers/change_password_controller.dart';

class ChangedPasswordView extends GetView<ChangePasswordController> {
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
              maxHeight: double.infinity,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: _buildBody(),
            ),
          ),
        ),
      ),
    );
  }

  Form _buildBody() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SettingTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            text: "Старый пароль",
            type: TextInputType.emailAddress,
            textEditingController: controller.lastPassword.value,
            hintText: "Введите старый пароль",
            validator: (val){
              if(val!.isEmpty){
                return "Это поле должно быть заполнено";
              }else{
                return null;
              }
            },
          ),
          SettingTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            text: "Новый пароль",
            type: TextInputType.emailAddress,
            textEditingController: controller.newPassword.value,
            hintText: "Введите новый пароль",
            validator: (val){
              if(val!.isEmpty){
                return "Это поле должно быть заполнено";
              }else{
                return null;
              }
            },
          ),
          SettingTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            text: "Повторите новый пароль",
            type: TextInputType.emailAddress,
            textEditingController: controller.repeatNewPassword.value,
            hintText: "Повторите новый пароль",
            validator: (val){
              if(val!.isEmpty){
                return "Это поле должно быть заполнено";
              }else{
                return null;
              }
            },
          ),
          CustomElevatedButton(
            text: "Сохранить",
            function: () {
              if (controller.newPassword.value.text !=
                  controller.repeatNewPassword.value.text) {
                SnackBarService.noEqualPasswords();
              } else if (_formKey.currentState!.validate()) {
                Get.offNamed(Routes.SETTINGS);
              } else {
                print('Form is invalid');
              }
            },
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Смена пароля"),
      centerTitle: true,
    );
  }
}
