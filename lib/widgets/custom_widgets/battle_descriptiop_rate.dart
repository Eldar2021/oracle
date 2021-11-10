import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/constants/color_constants.dart';

import 'custom_divider.dart';

class BattleDescriptionRate extends StatelessWidget {
  const BattleDescriptionRate({
    Key? key,
    required this.battle,
  }) : super(key: key);

  final Battle battle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          battle.description ?? "",
          style:
              Get.textTheme.caption!.copyWith(color: MyColors.grayWhiteColor),
        ),
        const SizedBox(height: 30.0),
        Row(
          children: [
            Text("Игра начинается:", style: Get.textTheme.bodyText2),
            const SizedBox(width: 10),
            Text(battle.startDate, style: Get.textTheme.bodyText2)
          ],
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            Text("Ставка:", style: Get.textTheme.bodyText2),
            const SizedBox(width: 10),
            Text(
              battle.rate ?? "0",
              style: Get.textTheme.bodyText2!
                  .copyWith(color: MyColors.moneyTextColor),
            ),
          ],
        ),
        const SizedBox(height: 15.0),
        Row(
          children: [
            Text("Формат игры:", style: Get.textTheme.bodyText2),
            const SizedBox(width: 10),
            Text(
              battle.formatBattle ?? "",
              style: Get.textTheme.bodyText2,
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        CustomDivider(),
      ],
    );
  }
}
