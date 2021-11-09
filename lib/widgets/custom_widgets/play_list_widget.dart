import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/profile/controllers/profile_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class PlaysList extends StatelessWidget {
  const PlaysList({
    Key? key,
    required this.controller,
    required this.plays,
  }) : super(key: key);

  final ProfileController controller;
  final List<Play> plays;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: plays.isEmpty? Container(): Column(
        children: [
          Text("Игры"),
          ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: plays.length,
              itemBuilder: (context, index) {
                Play play = plays[index];
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: MyColors.whiteColor, width: 1),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(play.photoProfile),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(play.name, style: Get.textTheme.subtitle1),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RowItem(
                                  icon: Assets.bottomNavBottom3,
                                  text: "${play.battles}",
                                  color: MyColors.whiteColor,
                                ),
                                RowItem(
                                  icon: Assets.componentsWinFlag,
                                  text: "${play.wins}",
                                  color: MyColors.winFlagColor,
                                ),
                                RowItem(
                                  icon: Assets.componentsDefeatFlag,
                                  text: "${play.defeats}",
                                  color: MyColors.defeatFlagColor,
                                ),
                                RowItem(
                                  icon: Assets.componentsPercent,
                                  color: controller
                                      .percentColor(play.winRate ?? 0),
                                  text: "${play.winRate?.round() ?? 0}",
                                ),
                                SizedBox(width: 20)
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  const RowItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  final Color color;
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: 8.0),
        SizedBox(width: 8),
        Text(
          text,
          style: Get.textTheme.caption!.copyWith(color: color),
        ),
      ],
    );
  }
}
