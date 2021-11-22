import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/respond/controllers/respond_battle_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'command_empty_player.dart';
import 'command_user_card.dart';

class BattleCommand extends StatelessWidget {
  const BattleCommand({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final RespondBattleController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Команда",
          style: Get.textTheme.caption!.copyWith(
            color: MyColors.whiteColor,
          ),
        ),
        const SizedBox(height: 15),
        TextFormField(
          controller: controller.nameCommand.value,
          maxLines: null,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hintText: "Введите название команды",
          ),
          validator: (val) {
            if (val!.isEmpty) {
              return "";
            } else {
              return null;
            }
          },
        ),
        const SizedBox(height: 25),
        Text(
          "Игрок ",
          style: Get.textTheme.caption!.copyWith(
            color: MyColors.whiteColor,
          ),
        ),
        const SizedBox(height: 15),
        CommandUserCard(user: controller.user, isCapitan: true),
        _buildListViewPlayerBuilder(),
        _buildListViewBuilder(),
        const SizedBox(height: 45),
      ],
    );
  }

  Obx _buildListViewBuilder() {
    return Obx(() {
      return ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: controller.emptyList.value,
        itemBuilder: (context, index) {
          return CommandEmptyPlayer();
        },
      );
    });
  }

  Obx _buildListViewPlayerBuilder() {
    return Obx(() {
      return ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: controller.notEmptyList.value,
        itemBuilder: (context, index) {
          UserModel user = controller.selectUsers[index];
          return CommandUserCard(
            user: user,
            backX: (user) {
              controller.selectRemoveUsersFunc(user);
            },
          );
        },
      );
    });
  }
}
