import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';

class BattleImageContainer extends StatelessWidget {
  const BattleImageContainer({
    Key? key,
    required this.battle,
  }) : super(key: key);

  final Battle battle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.width * 0.5,
      child: Image.asset(
        battle.getGameIcon,
        fit: BoxFit.fill,
      ),
    );
  }
}
