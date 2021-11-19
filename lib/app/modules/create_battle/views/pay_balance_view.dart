import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/create_battle/views/widgets/cards_container.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class PayBalanceView extends StatelessWidget {
  const PayBalanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pay"),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: double.infinity),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "На вашем балансе недостаточно средств для создания сражения",
                  textAlign: TextAlign.center,
                  style: Get.textTheme.bodyText2!
                      .copyWith(color: MyColors.orangeColor),
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Стоимость сражения:"),
                    Text(
                      "1 000 сом",
                      style: Get.textTheme.bodyText1!.copyWith(
                        color: MyColors.orangeColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Divider(
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                CardsContainer(
                  onTap: () { },
                  cardName: "Элсом",
                  image: Assets.elsom,
                  secImage: Assets.arrayArrayRight,
                ),
                const SizedBox(height: 20),
                CardsContainer(
                  onTap: () {},
                  cardName: "Pay24",
                  image: Assets.pay24,
                  secImage: Assets.arrayArrayRight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
