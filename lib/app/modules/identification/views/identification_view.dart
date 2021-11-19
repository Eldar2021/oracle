import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/service/get_dialog_service.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../controllers/identification_controller.dart';
import '../widgets/document_image.dart';
import '../widgets/image_picker_container.dart';
import '../widgets/text_form_field_with_text_identification.dart';

class IdentificationView extends GetView<IdentificationController> {
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
            child: buildBody(),
          ),
        ),
      ),
    );
  }

  Column buildBody() {
    return Column(
      children: [
        const SizedBox(height: 30.0),
        Text(
          "Идентификация счета необходима для предотвращения случаев мошенничества, противодействия отмыванию средств и финансирования терроризма.",
          style: Get.textTheme.subtitle2!.copyWith(height: 1.5),
        ),
        const SizedBox(height: 40.0),
        TextFormFieldWithTextIdentification(
          textEditingController: controller.name.value,
          text: "Личные данные",
          hinText: "ФИО",
        ),
        TextFormField(
          controller: controller.numberPassport.value,
          decoration: InputDecoration(
            hintText: "Номер паспорта",
          ),
        ),
        const SizedBox(height: 10.0),
        TextFormField(
          controller: controller.pin.value,
          decoration: InputDecoration(
            hintText: "ИНН",
          ),
        ),
        const SizedBox(height: 25.0),
        TextFormFieldWithTextIdentification(
          textEditingController: controller.birthday.value,
          text: "Дата рождения",
          hinText: "Нажмите что б ввести дату",
        ),
        const SizedBox(height: 25.0),
        TextFormFieldWithTextIdentification(
          textEditingController: controller.country.value,
          text: "Адрес проживания",
          hinText: "Страна",
        ),
        TextFormField(
          controller: controller.city.value,
          decoration: InputDecoration(
            hintText: "Город",
          ),
        ),
        const SizedBox(height: 10.0),
        TextFormField(
          controller: controller.address.value,
          decoration: InputDecoration(
            hintText: "Адрес",
          ),
        ),
        const SizedBox(height: 25.0),
        _buildPassport(),
        const SizedBox(height: 25.0),
        _buildAddressImage(),
        const SizedBox(height: 25.0),
        CustomElevatedButton(
          width: 210.0,
          text: "Отпраить на проверку",
          function: () {
            DialogService.loadingDialog();
          },
        ),
        const SizedBox(height: 80.0),
      ],
    );
  }

  Obx _buildAddressImage() => Obx(() => Container(
      child: controller.isAddress.value == false
          ? ImagePickerContainer(
              text: "Документ, подтверждающий адрес проживания",
              hinText: "Нажмите чтоб загрузить изображение",
              function: () {
                controller.imgFromGalleryAddress();
              })
          : DocumentImage(
              fileName: controller.selectImageAddress,
              function: () {
                controller.imgFromGalleryAddressCancel();
              })));

  Obx _buildPassport() => Obx(() => Container(
      child: controller.isPassport.value == false
          ? ImagePickerContainer(
              text: "Документ, удостоверяющий личность",
              hinText: "Нажмите чтоб загрузить изображение",
              function: () {
                controller.imgFromGalleryPassport();
              },
            )
          : DocumentImage(
              fileName: controller.selectImagePassport,
              function: () {
                controller.imgFromGalleryPassportCancel();
              },
            )));

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('Идентификация'),
      centerTitle: true,
    );
  }
}
