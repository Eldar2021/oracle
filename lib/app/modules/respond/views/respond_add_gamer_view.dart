import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';

class RespondAddGamerView extends StatelessWidget {
  const RespondAddGamerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Текст отклика",
                  style: Get.textTheme.caption!
                      .copyWith(color: MyColors.whiteColor),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: "Расскажите почему именно вы должнысражаться",
                    hintStyle: Get.textTheme.button!
                        .copyWith(color: MyColors.grayWhiteColor),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Команда",
                  style: Get.textTheme.caption!
                      .copyWith(color: MyColors.whiteColor),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Введите название команды",
                    hintStyle: Get.textTheme.button!
                        .copyWith(color: MyColors.grayWhiteColor),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Стоимость сражения:"),
                    Text(
                      "1 000 сом",
                      style: Get.textTheme.bodyText1!.copyWith(
                        color: MyColors.orangeColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Divider(
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 125,
                ),
                Center(
                  child: CustomElevatedButton(
                    function: () {},
                    text: "Откликнуться",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
