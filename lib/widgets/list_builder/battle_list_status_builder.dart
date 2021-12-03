import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/list_builder/user_play_list_widget.dart';

class BattlesStatusListBuilder extends StatelessWidget {
  const BattlesStatusListBuilder({
    Key? key,
    required this.battleList,
    required this.function,
    this.shrinkWrap = false,
    this.primary,
  }) : super(key: key);

  final List<Battle> battleList;
  final bool shrinkWrap;
  final bool? primary;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: shrinkWrap,
      primary: primary ?? null,
      itemCount: battleList.length,
      itemBuilder: (context, index) {
        Battle battle = battleList[index];
        return buildContainer(battle);
      },
    );
  }

  InkWell buildContainer(Battle battle) {
    return InkWell(
      onTap: () {
        function(battle);
      },
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: MyColors.grayTextColor, width: 1),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child:  CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(battle.getGameIcon),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(battle.title, style: Get.textTheme.subtitle1),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text("Игра начинается:",
                              style: Get.textTheme.caption)),
                      const SizedBox(width: 20.0),
                      Expanded(
                          child: Text("${battle.startDate}",
                              style: Get.textTheme.caption)),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Ставка:",
                          style: Get.textTheme.caption,
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Text(
                          "${battle.rate}",
                          style: Get.textTheme.caption!.copyWith(
                            color: MyColors.moneyTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28.0),
                  RowItem(
                    iconWidth: 16.0,
                    icon: battle.statusBattle == "Отменен"
                        ? Assets.componentsStatusCancel
                        : battle.statusBattle == "Завершен"
                            ? Assets.componentsStatusCompleted
                            : Assets.componentsStatusWaiting,
                    text: battle.statusBattle ?? "",
                    color: MyColors.whiteColor,
                  ), //status
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
