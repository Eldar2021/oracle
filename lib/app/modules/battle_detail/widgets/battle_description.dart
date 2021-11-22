import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/constants/color_constants.dart';

class BattleDescriptions extends StatelessWidget {
  const BattleDescriptions({
    Key? key,
    required this.battle,
  }) : super(key: key);

  final Battle battle;

  @override
  Widget build(BuildContext context) {
    return Text(
      battle.description ?? "",
      style: Get.textTheme.caption!.copyWith(color: MyColors.grayWhiteColor, height: 1.3),
    );
  }
}
