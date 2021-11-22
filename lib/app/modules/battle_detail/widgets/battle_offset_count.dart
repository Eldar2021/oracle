import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class BattleViewsOffersCount extends StatelessWidget {
  const BattleViewsOffersCount({
    Key? key,
    required this.battle,
  }) : super(key: key);

  final Battle battle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              SvgPicture.asset(Assets.componentsEyes),
              const SizedBox(width: 8.0),
              Text(
                "${battle.getViewsCount ?? 0} просмотров",
                style: Get.textTheme.caption!.copyWith(
                  color: MyColors.viewsTextColor,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              SvgPicture.asset(Assets.componentsArrayShare),
              const SizedBox(width: 8.0),
              Text(
                "${battle.getRepostsCount ?? 0} предложений",
                style: Get.textTheme.caption!.copyWith(
                  color: MyColors.viewsTextColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}