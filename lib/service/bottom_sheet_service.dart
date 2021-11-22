import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class BottomSheetService {
  // bottom sheet for image
  static Future<void> bottomSheetImage({
    required Function gallery,
    required Function camera,
  }) {
    return Get.bottomSheet(
      Container(
        height: 100,
        margin: const EdgeInsets.only(top: 2),
        padding: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            color: MyColors.backgroundColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            border: Border.all()),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  gallery(true);
                },
                child: Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.collections,
                        size: 50,
                        color: MyColors.greenColor,
                      ),
                      Text("Галерея"),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  camera(false);
                },
                child: Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.camera_alt,
                        size: 50,
                        color: MyColors.greenColor,
                      ),
                      Text("Камера"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: MyColors.whiteColor,
      barrierColor: MyColors.backgroundColor.withOpacity(0.7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    );
  }
 // bottom sheet for date time picker
  static void dateTimePicker(BuildContext context){
    DatePicker.showDatePicker(
      context,
      minuteDivider: 2,
      onMonthChangeStartWithFirstDate: true,
      minDateTime: DateTime.parse('2020-05-15 09:23:10'),
      maxDateTime: DateTime.parse('2023-06-03 21:11:00'),
      initialDateTime: DateTime.parse('2021-11-22 09:37:00'),
      dateFormat: 'yyyy MM dd   HH-mm',
      pickerMode: DateTimePickerMode.datetime,
      pickerTheme: DateTimePickerTheme(
        backgroundColor: MyColors.backgroundColor,
        confirmTextStyle: Get.textTheme.bodyText1!
            .copyWith(color: MyColors.redColor),
        cancelTextStyle: Get.textTheme.bodyText1!
            .copyWith(color: MyColors.greenColor),
        itemTextStyle: Get.textTheme.bodyText1!
            .copyWith(color: MyColors.whiteColor),
        title: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: MyColors.grayTextColor,

          ),
          width: double.infinity,
          height: 56.0,
          alignment: Alignment.center,
          child: Text(
            'Введите дату и время',
          ),
        ),
        cancel: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: MyColors.redColor,
          ),
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            'Отмена',
          ),
        ),
        confirm:Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: MyColors.redColor,
          ),
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            'Отмена',
          ),
        ),
        titleHeight: 60,
        pickerHeight: 300,
        itemHeight: 50,
      ),
      onCancel: () async{print("jyl");},
      onChange: (dateTime, List<int> index) async{print("saat");},
      onConfirm: (dateTime, List<int> index) async{print("minut");},
    );
  }
}
