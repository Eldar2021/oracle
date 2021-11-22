import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_divider.dart';

class BattleNameCategory extends StatelessWidget {
  const BattleNameCategory({
    Key? key,
    required this.battle,
  }) : super(key: key);

  final Battle battle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(battle.title, style: Get.textTheme.subtitle1!.copyWith(height: 1.5)),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Создано сегодня, 13:10",
              style: Get.textTheme.caption!.copyWith(
                color: MyColors.grayWhiteColor,
              ),
            ),
            Text(
              "Категория “${battle.category}”",
              style: Get.textTheme.caption!.copyWith(
                color: MyColors.categoryTextColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 18.0),
        CustomDivider(),
      ],
    );
  }
}
