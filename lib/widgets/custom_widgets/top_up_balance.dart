import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class TopUpBalance extends StatelessWidget {
  const TopUpBalance({
    this.text,
    required this.balance,
    Key? key,
  }) : super(key: key);

  final String? text;
  final double? balance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(
              Routes.BALANCE,
              arguments: ["На вашем балансе недостаточно"],
            );
          },
          child: Container(
            width: 160,
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: MyColors.defeatFlagColor,
                width: 2,
              ),
              color: MyColors.backgroundColor,
            ),
            child: Center(
              child: Text(
                "Пополнить баланс",
                style: Get.textTheme.bodyText1!.copyWith(
                  color: MyColors.defeatFlagColor,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "$text",
          style: Get.textTheme.caption!.copyWith(
            color: MyColors.defeatFlagColor,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.drawerNavMoney),
            const SizedBox(width: 10),
            Text(
              "Ваш баланс $balance сом",
              style: Get.textTheme.caption!.copyWith(
                color: MyColors.whiteColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    );
  }
}
