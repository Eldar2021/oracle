import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/modules/home/controllers/home_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class BattlesListBuilder extends StatelessWidget {
  const BattlesListBuilder({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.battles.length,
      itemBuilder: (context, index) {
        Battle battle = controller.battles[index];
        return buildContainer(battle);
      },
    );
  }

  InkWell buildContainer(Battle battle) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.BATTLE_DETAIL);
      },
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: MyColors.whiteColor, width: 1),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  "https://picsum.photos/200/300",
                  width: 42,
                  height: 42,
                  fit: BoxFit.cover,
                ),
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
            )
          ],
        ),
      ),
    );
  }
}
