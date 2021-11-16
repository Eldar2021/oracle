import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class CashContainer extends StatelessWidget {
  const CashContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 160,
          height: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: MyColors.defeatFlagColor, width: 2),
            color: MyColors.backgroundColor,
          ),
          child: Center(
            child: Text(
              "Пополнить баланс",
              style: Get.textTheme.bodyText1!
                  .copyWith(color: MyColors.defeatFlagColor),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "На вашем балансе недостаточно средств для создания сражения",
          style:
              Get.textTheme.caption!.copyWith(color: MyColors.defeatFlagColor),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.drawerNavMoney),
            const SizedBox(width: 10),
            Text(
              "Ваш баланс 750 сом",
              style:
                  Get.textTheme.caption!.copyWith(color: MyColors.whiteColor),
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    );
  }
}
