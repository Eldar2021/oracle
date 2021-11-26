import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/service/bottom_sheet_service.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../controllers/create_battle_controller.dart';

class CreateBattleView extends GetView<CreateBattleController> {
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
            constraints: BoxConstraints(maxHeight: double.infinity),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: _buildBody(context),
              ),
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          Get.offAllNamed(Routes.SCREEN);
        },
      ),
      title: Text('Создание сражения'),
      centerTitle: true,
    );
  }

  Column _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Text(
          "Заголовок",
          style: Get.textTheme.caption!.copyWith(
            color: MyColors.whiteColor,
          ),
        ),
        const SizedBox(height: 10),
        _titleField(),
        const SizedBox(height: 25),
        Text(
          "Описание",
          style: Get.textTheme.caption!.copyWith(
            color: MyColors.whiteColor,
          ),
        ),
        const SizedBox(height: 10),
        _descriptionField(),
        const SizedBox(height: 25),
        Text(
          "Ставка",
          style: Get.textTheme.caption!.copyWith(
            color: MyColors.whiteColor,
          ),
        ),
        const SizedBox(height: 10),
        _rateField(),
        const SizedBox(height: 25),
        Text(
          "Дата и время",
          style: Get.textTheme.caption!.copyWith(
            color: MyColors.whiteColor,
          ),
        ),
        const SizedBox(height: 10),
        _dateTimeField(context),
        const SizedBox(height: 110),
        _button(),
      ],
    );
  }

  Center _button() {
    return Center(
      child: CustomElevatedButton(
        function: () {
          if (_formKey.currentState!.validate()) {
            print('Form is valid');
            Get.toNamed(Routes.BATTLE_FORMAT);
          } else {
            print('Form is invalid');
          }
        },
        text: "Далее",
        width: 85,
        height: 42,
      ),
    );
  }

  TextFormField _dateTimeField(BuildContext context) {
    return TextFormField(
      readOnly: true,
      controller: controller.dateTime.value,
      onTap: () {
        BottomSheetService.dateTimePicker(
          context,
          controller: controller.dateTime.value,
        );
      },
      decoration: InputDecoration(
        hintText: "Время игры",
        hintStyle: Get.textTheme.button!.copyWith(
          color: MyColors.grayTextColor,
        ),
      ),
      validator: (val) {
        if (val!.isEmpty) {
          return "Это поле должно быть заполнено";
        } else {
          return null;
        }
      },
    );
  }

  TextFormField _rateField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: controller.rate.value,
      validator: (val) {
        if (val!.isEmpty) {
          return "Это поле должно быть заполнено";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: "Сумма ставки",
        hintStyle: Get.textTheme.button!.copyWith(
          color: MyColors.grayTextColor,
        ),
      ),
    );
  }

  TextFormField _descriptionField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: controller.description.value,
      maxLines: 6,
      decoration: InputDecoration(
        hintText: "Введите описание",
        hintStyle: Get.textTheme.button!.copyWith(
          color: MyColors.grayTextColor,
        ),
      ),
      validator: (val) {
        if (val!.isEmpty) {
          return "Это поле должно быть заполнено";
        } else {
          return null;
        }
      },
    );
  }

  TextFormField _titleField() {
    return TextFormField(
      controller: controller.title.value,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: "Введите заголовок",
        hintStyle: Get.textTheme.button!.copyWith(
          color: MyColors.grayTextColor,
        ),
      ),
      validator: (val) {
        if (val!.isEmpty) {
          return "Это поле должно быть заполнено";
        } else {
          return null;
        }
      },
    );
  }
}
