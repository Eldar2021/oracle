import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/service/bottom_sheet_service.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../controllers/create_battle_controller.dart';

class CreateBattleView extends GetView<CreateBattleController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CreateBattleView'),
        centerTitle: true,
      ),
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
        TextFormField(
          decoration: InputDecoration(
            hintText: "Введите заголовок",
            hintStyle: Get.textTheme.button!.copyWith(
              color: MyColors.grayWhiteColor,
            ),
          ),
        ),
        const SizedBox(height: 25),
        Text(
          "Описание",
          style: Get.textTheme.caption!.copyWith(
            color: MyColors.whiteColor,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          maxLines: 6,
          decoration: InputDecoration(
            hintText: "Введите описание",
            hintStyle: Get.textTheme.button!.copyWith(
              color: MyColors.grayWhiteColor,
            ),
          ),
        ),
        const SizedBox(height: 25),
        Text(
          "Ставка",
          style: Get.textTheme.caption!.copyWith(
            color: MyColors.whiteColor,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Сумма ставки",
            hintStyle: Get.textTheme.button!.copyWith(
              color: MyColors.grayWhiteColor,
            ),
          ),
        ),
        const SizedBox(height: 25),
        Text(
          "Дата и время",
          style: Get.textTheme.caption!.copyWith(
            color: MyColors.whiteColor,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Время игры",
            hintStyle: Get.textTheme.button!.copyWith(
              color: MyColors.grayWhiteColor,
            ),
          ),
        ),
        const SizedBox(height: 110),
        Center(
          child: CustomElevatedButton(
            function: () {
              Get.toNamed(Routes.BATTLE_FORMAT);
            },
            text: "Далее",
            width: 85,
            height: 42,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            BottomSheetService.dateTimePicker(context);
          },
          child: Text("time cupertino"),
        ),
      ],
    );
  }


  //
  // Obx _getDate(BuildContext context) {
  //   return Obx(
  //     () => TextFormField(
  //       //controller: addAdvertController.data.value,
  //       decoration: InputDecoration(
  //         prefixIcon: Icon(Icons.calendar_today),
  //         labelText: "Күнүн жазыңыз ${controller.count.value}",
  //       ),
  //       readOnly: true,
  //       onTap: () async {
  //         DateTime? pickedDate = await showDatePicker(
  //             context: context,
  //             initialDate: DateTime.now(),
  //             firstDate: DateTime(2000),
  //             lastDate: DateTime(2101));
  //         if (pickedDate != null) {
  //           print(pickedDate);
  //           String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
  //           print(formattedDate);
  //           // addAdvertController.data.value.text = formattedDate;
  //         } else {
  //           print("Date is not selected");
  //         }
  //       },
  //     ),
  //   );
  // }
  //
  // Obx _getTime(BuildContext context) {
  //   return Obx(
  //     () => TextFormField(
  //       //controller: addAdvertController.data.value,
  //       decoration: InputDecoration(
  //         prefixIcon: Icon(Icons.calendar_today),
  //         labelText: "Күнүн жазыңыз ${controller.count.value}",
  //       ),
  //       readOnly: true,
  //       onTap: () async {
  //         TimeOfDay? pickedTime = await showTimePicker(
  //             context: context,
  //             initialTime: TimeOfDay.now(),
  //             initialEntryMode: TimePickerEntryMode.dial);
  //         if (pickedTime != null) {
  //           print(pickedTime);
  //           //  String formattedDate = TimeFormat('yyyy-MM-dd').format(pickedTime);
  //           // print(formattedDate);
  //           // addAdvertController.data.value.text = formattedDate;
  //         } else {
  //           print("Date is not selected");
  //         }
  //       },
  //     ),
  //   );
  // }


}
