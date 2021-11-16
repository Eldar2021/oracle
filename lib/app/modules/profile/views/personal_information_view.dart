import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/profile/widgets/settings_text_field.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../controllers/personal_information_controller.dart';
import 'package:oracle/generated/assets.dart';

class PersonalInfoView extends GetView<PersonalInfoController> {
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 140,
            height: 140,
            child: Stack(
              children: [
                Container(
                  width: 130,
                  height: 130,
                  child: Obx(() {
                    return controller.photoUrl.value == ""
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.file(
                              controller.selectImage!,
                              fit: BoxFit.cover,
                            ),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              controller.photoUrl.value,
                              fit: BoxFit.cover,
                            ),
                          );
                  }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () async {
                        await controller.imgFromGallery();
                      },
                      child: CircleAvatar(
                          backgroundColor: MyColors.linkTextColor,
                          child: SvgPicture.asset(Assets.componentsCamera)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30),
        SettingTextField(
          textEditingController: controller.name.value,
          text: "Имя",
          hintText: "Введите Имя",
        ),
        SettingTextField(
          textEditingController: controller.lastName.value,
          text: "Фамилия",
          hintText: "Введите Фамилия",
        ),
        SettingTextField(
          textEditingController: controller.nick.value,
          text: "Ник",
          hintText: "Введите Ник",
        ),
        SettingTextField(
          textEditingController: controller.email.value,
          text: "Электронный адрес",
          hintText: "Введите Электронный адре",
        ),
        SettingTextField(
          textEditingController: controller.phoneNumber.value,
          text: "Телефонный номер",
          hintText: "Введите Телефонный номер",
        ),
        SettingTextField(
          textEditingController: controller.whatsApp.value,
          text: "WhatsApp",
          hintText: "Введите WhatsApp",
        ),
        SettingTextField(
          textEditingController: controller.telegram.value,
          text: "Telegram",
          hintText: "Введите ссылку на ваш телеграм",
        ),
        SizedBox(height: 60),
        Center(
            child: CustomElevatedButton(
          text: "Сохранить",
          function: () {},
        )),
        SizedBox(height: 60),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('Личная информация'),
      centerTitle: true,
    );
  }
}
