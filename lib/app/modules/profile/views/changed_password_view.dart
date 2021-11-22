import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/profile/widgets/settings_text_field.dart';
import 'package:oracle/service/snack_bar_service.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../controllers/change_password_controller.dart';

class ChangedPasswordView extends GetView<ChangePasswordController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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

  Form _buildBody() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SettingTextField(
            text: "Старый пароль",
            textEditingController: controller.lastPassword.value,
            hintText: "Введите старый пароль",
            validator: (val){
              if(val!.isEmpty){
                return "";
              }else{
                return null;
              }
            },
          ),
          SettingTextField(
            text: "Новый пароль",
            textEditingController: controller.newPassword.value,
            hintText: "Введите новый пароль",
            validator: (val){
              if(val!.isEmpty){
                return "";
              }else{
                return null;
              }
            },
          ),
          SettingTextField(
            text: "Повторите новый пароль",
            textEditingController: controller.repeatNewPassword.value,
            hintText: "Повторите новый пароль",
            validator: (val){
              if(val!.isEmpty){
                return "";
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
                print('Form is valid');
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
