import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../widgets/settings_text_field.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/service/bottom_sheet_service.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../controllers/personal_information_controller.dart';
import 'package:oracle/generated/assets.dart';

class PersonalInfoView extends GetView<PersonalInfoController> {
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
                      controller.count.value;
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
                          BottomSheetService.bottomSheetImage(
                            gallery: (val) {
                              controller.imgFromGallery(val);
                            },
                            camera: (val) {
                              controller.imgFromGallery(val);
                            },
                          );
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
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textEditingController: controller.name.value,
            text: "??????",
            hintText: "?????????????? ??????",
            validator: (val) {
              if (val!.isEmpty) {
                return "?????? ???????? ???????????? ???????? ??????????????????";
              } else {
                return null;
              }
            },
          ),
          SettingTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textEditingController: controller.lastName.value,
            text: "??????????????",
            hintText: "?????????????? ??????????????",
            validator: (val) {
              if (val!.isEmpty) {
                return "?????? ???????? ???????????? ???????? ??????????????????";
              } else {
                return null;
              }
            },
          ),
          SettingTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textEditingController: controller.nick.value,
            text: "??????",
            hintText: "?????????????? ??????",
            validator: (val) {
              if (val!.isEmpty) {
                return "?????? ???????? ???????????? ???????? ??????????????????";
              } else {
                return null;
              }
            },
          ),
          SettingTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textEditingController: controller.email.value,
            type: TextInputType.emailAddress,
            text: "?????????????????????? ??????????",
            hintText: "?????????????? ?????????????????????? ????????",
            validator: (val) {
              if (val!.isEmpty) {
                return "?????? ???????? ???????????? ???????? ??????????????????";
              } else {
                return null;
              }
            },
          ),
          SettingTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textEditingController: controller.phoneNumber.value,
            type: TextInputType.phone,
            text: "???????????????????? ??????????",
            hintText: "?????????????? ???????????????????? ??????????",
            validator: (val) {
              if (val!.isEmpty) {
                return "?????? ???????? ???????????? ???????? ??????????????????";
              } else {
                return null;
              }
            },
          ),
          SettingTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textEditingController: controller.whatsApp.value,
            type: TextInputType.phone,
            text: "WhatsApp",
            hintText: "?????????????? WhatsApp",
            validator: (val) {
              if (val!.isEmpty) {
                return "?????? ???????? ???????????? ???????? ??????????????????";
              } else {
                return null;
              }
            },
          ),
          SettingTextField(
            textEditingController: controller.telegram.value,
            type: TextInputType.emailAddress,
            text: "Telegram",
            hintText: "?????????????? ???????????? ???? ?????? ????????????????",
          ),
          SizedBox(height: 60),
          Center(
              child: CustomElevatedButton(
            text: "??????????????????",
            function: () {
              if (_formKey.currentState!.validate()) {
                print('Form is valid');
              } else {
                print('Form is invalid');
              }
            },
          )),
          SizedBox(height: 60),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('???????????? ????????????????????'),
      centerTitle: true,
    );
  }
}
