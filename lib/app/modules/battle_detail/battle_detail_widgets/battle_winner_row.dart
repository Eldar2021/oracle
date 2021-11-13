import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/constants/color_constants.dart';

class BattleWinnerRow extends StatelessWidget {
  const BattleWinnerRow({
    Key? key,
    required this.battle,
  }) : super(key: key);

  final Battle battle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Победитель:", style: Get.textTheme.bodyText2),
        const SizedBox(width: 10),
        Text(
          battle.winner ?? "",
          style:
          Get.textTheme.bodyText2!.copyWith(color: MyColors.linkTextColor),
        ),
      ],
    );
  }
}