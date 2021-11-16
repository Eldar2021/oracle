import 'package:oracle/app/modules/create_battle/controllers/add_gamer_controller.dart';
import 'package:oracle/app/modules/create_battle/controllers/battle_format_controller.dart';
import 'package:oracle/widgets/custom_widgets/cash_containter.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/text_field_container.dart';
import 'package:oracle/widgets/custom_widgets/three_to_three.dart';
import 'package:oracle/widgets/custom_widgets/two_to_two_view.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/widgets/custom_widgets/user_container.dart';
import 'package:oracle/widgets/custom_widgets/four_to_four.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dart:async';

class AddGamerView extends GetView<BattleFormatController> {
  AddGamerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Gamer"),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: double.infinity),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(height: 10),
                // Text(
                //   "Формат игры",
                //   style: Get.textTheme.bodyText1!
                //       .copyWith(color: MyColors.whiteColor),
                // ),
                // const SizedBox(height: 10),
                // DropdownButtonFormField(
                //   elevation: 0,
                //   decoration: InputDecoration(
                //     enabledBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(16),
                //     ),
                //     fillColor: MyColors.buttonBgColor,
                //   ),
                //   dropdownColor: MyColors.buttonBgColor,
                //   items: battleFormatItems,
                //   value: selectedBattleFormat,
                //   alignment: AlignmentDirectional.centerEnd,
                //   onChanged: (String? newBattleFormat) {
                //     setState() {
                //       selectedBattleFormat = newBattleFormat!;
                //     }
                //   },
                // ),
                // const SizedBox(height: 10),
                // SquadName(),
                // const SizedBox(height: 25),
                // Text("Игрок", style: Get.textTheme.bodyText1),
                // const SizedBox(height: 10),
                // UserContainer(
                //   userName: "${userModel1.name}  *  ${userModel1.nickName}",
                // ),
                // const SizedBox(height: 25),
                // TwoToTwoView(),
                Text(controller.squadName.value.toString()),
                const SizedBox(height: 115),
                Center(
                  child: CustomElevatedButton(
                    function: () {
                      Get.toNamed(Routes.PUBLISH_GAME);
                    },
                    text: "Предварительный просмотр",
                    width: 300,
                    height: 42,
                  ),
                ),
                const SizedBox(height: 29),
                Center(child: CashContainer()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SquadName extends StatelessWidget {
  const SquadName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Команда",
          style: Get.textTheme.bodyText1!.copyWith(color: MyColors.whiteColor),
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16)),
            hintText: "Введите название команды",
            hintStyle:
                Get.textTheme.button!.copyWith(color: MyColors.grayWhiteColor),
          ),
        ),
      ],
    );
  }
}
