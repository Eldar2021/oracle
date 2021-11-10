import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class BattleDetaileContainer extends StatelessWidget {
  const BattleDetaileContainer({
    Key? key,
    // required this.battleImage,
    required this.battleTitle,
    required this.battleCreatedTime,
    required this.battleCategory,
    required this.battleDecrioption,
    required this.battleStartTime,
    required this.battleBet,
    required this.battleStatus,
  }) : super(key: key);

  // final Image battleImage;
  final String battleTitle;
  final String battleCategory;
  final String battleCreatedTime;
  final String battleDecrioption;
  final String battleStartTime;
  final String battleBet;
  final String battleStatus;

  @override
  Widget build(BuildContext context) {
    var battle;
    return Container(
      child: Column(
        children: [
          Image.asset(
            Assets.dota2,
            height: 180.0,
            width: double.infinity,
          ),
          Text(battleTitle),
          Row(children: [
            Text(battleCreatedTime),
            SizedBox(width: 40),
            Text(battleCategory),
            SizedBox(width: 20),
          ]),
          Drawer(),
          SizedBox(height: 20),
          Text(battleDecrioption),
          SizedBox(width: 30),
          Text(battleStartTime),
          Text(battleBet),
          Text(battleStatus),
          Drawer(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.componentsEyes),
                    const SizedBox(width: 8.0),
                    Text(
                      "${battle.getViewsCount} просмотров",
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
                      "${battle.getRepostsCount} предложений",
                      style: Get.textTheme.caption!.copyWith(
                        color: MyColors.viewsTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
