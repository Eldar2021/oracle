import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../controllers/create_battle_controller.dart';

class CreateBattleView extends GetView<CreateBattleController> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  "Заголовок",
                  style: Get.textTheme.caption!
                      .copyWith(color: MyColors.whiteColor),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Введите заголовок",
                    hintStyle: Get.textTheme.button!
                        .copyWith(color: MyColors.grayWhiteColor),
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  "Описание",
                  style: Get.textTheme.caption!
                      .copyWith(color: MyColors.whiteColor),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: "Введите описание",
                    hintStyle: Get.textTheme.button!
                        .copyWith(color: MyColors.grayWhiteColor),
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  "Ставка",
                  style: Get.textTheme.caption!
                      .copyWith(color: MyColors.whiteColor),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Сумма ставки",
                    hintStyle: Get.textTheme.button!
                        .copyWith(color: MyColors.grayWhiteColor),
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  "Дата и время",
                  style: Get.textTheme.caption!
                      .copyWith(color: MyColors.whiteColor),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Дата игры",
                    hintStyle: Get.textTheme.button!
                        .copyWith(color: MyColors.grayWhiteColor),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Время игры",
                    hintStyle: Get.textTheme.button!
                        .copyWith(color: MyColors.grayWhiteColor),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
