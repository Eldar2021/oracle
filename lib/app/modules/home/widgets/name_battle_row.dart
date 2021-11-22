import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/play_model/play_models.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/list_builder/user_play_list_widget.dart';

class CategoryNameRow extends StatelessWidget {
  const CategoryNameRow({
    required this.play,
    Key? key,
  }) : super(key: key);

  final Play play;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text("${play.name}"),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RowItem(
              icon: Assets.bottomNavBottom3,
              text: "${play.battle}",
              iconWidth: 10,
              color: MyColors.whiteColor,
            ),
            RowItem(
              icon: Assets.componentsPeople,
              text: "${play.player}",
              iconWidth: 10,
              color: MyColors.whiteColor,
            ),
            RowItem(
              icon: Assets.componentsCoin,
              text: "до ${play.coins} с",
              iconWidth: 10,
              iconColor: MyColors.whiteColor,
              color: MyColors.whiteColor,
            ),
            SizedBox(width: Get.width*0.15,)
          ],
        )
      ],
    );
  }
}
