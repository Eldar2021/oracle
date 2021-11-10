import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/descrip_check.dart';
import 'package:oracle/widgets/custom_widgets/link_text_widget.dart';

class BattlePerfotmerView extends StatelessWidget {
  const BattlePerfotmerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: double.infinity),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Center(
                  child: LinkText(
                    text1: "Выбрать пользователя ",
                    text2: "Леха Lewa О.\n",
                    text3: "исполнителем?",
                    styletex1: Get.textTheme.bodyText1!,
                    styletex2: Get.textTheme.bodyText1!
                        .copyWith(color: MyColors.linkTextColor),
                    function: () {},
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Стоимость сражения:"),
                    Text("3000 com",
                        style: Get.textTheme.bodyText1!
                            .copyWith(color: MyColors.moneyTextColor)),
                  ],
                ),
                const SizedBox(
                  height: 30,
                  child: Divider(color: MyColors.whiteColor),
                ),
                const SizedBox(height: 20),
                Text("Sed ut perspiciatis unde :",
                    textAlign: TextAlign.start,
                    style: Get.textTheme.bodyText1!),
                const SizedBox(height: 25),
                ListView.builder(
                  shrinkWrap: true,
                  // primary: false,
                  itemBuilder: (context, index) {
                    return DescriptionCheck(
                        text:
                            "Еomnis iste natus error sit voluptatem accusantium doloremque");
                  },
                ),
                const SizedBox(height: 135),
                LinkText(
                  text1: "Нажимая “Выбрать исполниеля” Вы соглашаетесь с ",
                  text2:
                      "Правилами платежного сервиса и Правилами сервиса “Сделка без риска”",
                  styletex1: Get.textTheme.caption!,
                  styletex2: Get.textTheme.caption!,
                  function: () {},
                ),
                const SizedBox(height: 22),
                CustomElevatedButton(
                  function: () {},
                  width: Get.width * 0.7,
                  height: 42,
                  text: "Выбрать исполнителем",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
