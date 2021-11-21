import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/app/modules/filter/widgets/text_field_with_text.dart';

class RespondBattleView extends StatelessWidget {
  const RespondBattleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("k"),
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
                const SizedBox(height: 45),
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
                    function: () {
                      Get.toNamed(Routes.RESPOND_ADD_GAMER);
                    },
                    text: "Откликнуться",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 160,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: MyColors.defeatFlagColor, width: 2),
                        color: MyColors.backgroundColor,
                      ),
                      child: Center(
                        child: Text(
                          "Пополнить баланс",
                          style: Get.textTheme.bodyText1!
                              .copyWith(color: MyColors.defeatFlagColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "На вашем балансе недостаточно средств для создания сражения",
                      style: Get.textTheme.caption!
                          .copyWith(color: MyColors.defeatFlagColor),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Assets.drawerNavMoney),
                        const SizedBox(width: 10),
                        Text(
                          "Ваш баланс 750 сом",
                          style: Get.textTheme.caption!
                              .copyWith(color: MyColors.whiteColor),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
