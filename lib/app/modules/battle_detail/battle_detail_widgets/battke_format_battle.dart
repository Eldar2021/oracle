import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';

class BattleFormatBattle extends StatelessWidget {
  const BattleFormatBattle({
    Key? key,
    required this.battle,
  }) : super(key: key);

  final Battle battle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Формат игры:", style: Get.textTheme.bodyText2),
        const SizedBox(width: 10),
        Text(
          battle.formatBattle ?? "",
          style: Get.textTheme.bodyText2,
        ),
      ],
    );
  }
}
