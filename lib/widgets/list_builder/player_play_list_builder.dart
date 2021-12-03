import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/profile/controllers/player_profile_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class PlayerPlaysList extends StatelessWidget {
  const PlayerPlaysList({
    Key? key,
    required this.controller,
    required this.plays,
  }) : super(key: key);

  final PlayerProfileController controller;
  final List<Play> plays;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: plays.isEmpty
          ? Container()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Text("Игры"),
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: plays.length,
                  itemBuilder: (context, index) {
                    Play play = plays[index];
                    return _buildContainer(play);
                  },
                )
              ],
            ),
    );
  }

  Container _buildContainer(Play play) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: MyColors.grayTextColor, width: 1),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(26),
            child: Image.asset(
              play.photoProfile,
              width: 42,
              height: 42,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 39),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
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
                      color: controller.percentColor(play.winRate ?? 0),
                      text: "${play.winRate?.round() ?? 0}",
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
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
    this.iconColor,
    this.iconWidth = 8.0,
  }) : super(key: key);

  final Color color;
  final Color? iconColor;
  final String icon;
  final String text;
  final double iconWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: iconWidth, color: iconColor),
        SizedBox(width: 8),
        Text(text, style: Get.textTheme.caption!.copyWith(color: color)),
      ],
    );
  }
}
