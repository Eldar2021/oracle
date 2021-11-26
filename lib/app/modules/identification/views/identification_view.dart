import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:oracle/service/bottom_sheet_service.dart';
import 'package:oracle/service/snack_bar_service.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../controllers/identification_controller.dart';
import '../widgets/document_image.dart';
import '../widgets/image_picker_container.dart';
import '../widgets/text_form_field_with_text_identification.dart';

class IdentificationView extends GetView<IdentificationController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Obx(() {
        return Scaffold(
          appBar: _buildAppBar(),
          body: controller.position == "waitIden"
              ? SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: double.infinity,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: buildBody(context),
                    ),
                  ),
                )
              : FutureBuilder(builder: (context, snapshot) {
                  return Center(
                    child: Text("Вы идентифицированы"),
                  );
                }),
        );
      }),
    );
  }

  Form buildBody(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
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
            validator: (val) {
              if (val!.isEmpty) {
                return "Это поле должно быть заполнено";
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            controller: controller.numberPassport.value,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Номер паспорта",
            ),
            validator: (val) {
              if (val!.isEmpty) {
                return "Это поле должно быть заполнено";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 10.0),
          TextFormField(
            controller: controller.pin.value,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "ИНН",
            ),
            validator: (val) {
              if (val!.isEmpty) {
                return "Это поле должно быть заполнено";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 25.0),
          Row(
            children: [
              Text("Дата рождения"),
            ],
          ),
          const SizedBox(height: 10.0),
          TextFormField(
            readOnly: true,
            onTap: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2019, 1),
                lastDate: DateTime(2021, 12),
              ).then((pickedDate) {
                controller.birthday.value.text =
                    DateFormat("yyyy/MM/dd").format(pickedDate!);
              });
            },
            controller: controller.birthday.value,
            decoration: InputDecoration(
              hintText: "Нажмите что б ввести дату",
            ),
            validator: (val) {
              if (val!.isEmpty) {
                return "Это поле должно быть заполнено";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 10.0),
          const SizedBox(height: 25.0),
          TextFormFieldWithTextIdentification(
            textEditingController: controller.country.value,
            text: "Адрес проживания",
            hinText: "Страна",
            validator: (val) {
              if (val!.isEmpty) {
                return "Это поле должно быть заполнено";
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            controller: controller.city.value,
            decoration: InputDecoration(
              hintText: "Город",
            ),
            validator: (val) {
              if (val!.isEmpty) {
                return "Это поле должно быть заполнено";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 10.0),
          TextFormField(
            controller: controller.address.value,
            decoration: InputDecoration(
              hintText: "Адрес",
            ),
            validator: (val) {
              if (val!.isEmpty) {
                return "Это поле должно быть заполнено";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 25.0),
          _buildPassport(),
          const SizedBox(height: 25.0),
          _buildAddressImage(),
          const SizedBox(height: 25.0),
          _buildButton(),
          const SizedBox(height: 80.0),
        ],
      ),
    );
  }

  CustomElevatedButton _buildButton() {
    return CustomElevatedButton(
      width: 210.0,
      text: "Отпраить на проверку",
      function: () {
        if (_formKey.currentState!.validate()) {
          if (controller.selectImagePassport == null) {
            SnackBarService.nullPhoto(
              "selectImagePassport",
              "selectImagePassport bosh toltur",
            );
          } else if (controller.selectImageAddress == null) {
            SnackBarService.nullPhoto(
              "selectImageAddress",
              "selectImageAddress bosh toltur",
            );
          } else {
            print('Form is valid');
            controller.noIden();
          }
        } else {
          print('Form is invalid');
        }
      },
    );
  }

  Obx _buildAddressImage() => Obx(() => Container(
      child: controller.isAddress.value == false
          ? ImagePickerContainer(
              text: "Документ, подтверждающий адрес проживания",
              hinText: "Нажмите чтоб загрузить изображение",
              function: () {
                BottomSheetService.bottomSheetImage(
                  gallery: (val) {
                    controller.imgFromGalleryAddress(val);
                  },
                  camera: (val) {
                    controller.imgFromGalleryAddress(val);
                  },
                );
                // controller.imgFromGalleryAddress();
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
                BottomSheetService.bottomSheetImage(
                  gallery: (val) {
                    controller.imgFromGalleryPassport(val);
                  },
                  camera: (val) {
                    controller.imgFromGalleryPassport(val);
                  },
                );
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
