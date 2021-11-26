import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/data/models/battle_task_model/battle_task_model.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import '../controllers/battle_detail_tab_bar_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/service/snack_bar_service.dart';
import 'package:oracle/widgets/custom_widgets/custom_divider.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/list_builder/task_list_builder.dart';
import 'package:oracle/app/modules/profile/widgets/user_ph_tl_wh_widget.dart';
import 'battle_customer.dart';
import 'battle_description.dart';
import 'battle_name_category.dart';
import 'battle_offset_count.dart';
import 'battle_rate.dart';
import 'battle_start_time.dart';

class DetailBattle extends StatelessWidget {
  const DetailBattle({
    Key? key,
    required this.battle,
    required this.controller,
  }) : super(key: key);

  final Battle battle;
  final BattleDetailTabBarController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: buildBody(),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: buildButton(),
    );
  }

  Column buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BattleNameCategory(battle: battle),
        const SizedBox(height: 18.0),
        BattleDescriptions(battle: battle),
        const SizedBox(height: 27.0),
        BattleStartTime(battle: battle),
        const SizedBox(height: 10.0),
        BattleRate(battle: battle),
        const SizedBox(height: 17.0),
        CustomDivider(),
        const SizedBox(height: 17.0),
        BattleViewsOffersCount(battle: battle),
        const SizedBox(height: 52.0),
        Text("Заказчик"),
        const SizedBox(height: 17.0),
        BattleCustomer(user: userModel1),
        const SizedBox(height: 30.0),
        UserPhoneTlWhatsApp(
          ph: battle.customer.phone,
          tl: battle.customer.telegram,
          wh: battle.customer.whatsApp,
        ),
        const SizedBox(height: 40.0),
        InkWell(
          onTap: ()async{
            SnackBarService.nullPhoto("Задания отмана", "");
            await Future.delayed(Duration(seconds: 1));
            Get.offAllNamed(Routes.SCREEN);
          },
          child: Container(
            width: Get.width,
            color: MyColors.buttonBgColor,
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: Center(child: Text("Отменить задание")),
          ),
        ),
        const SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Похожие задания"),
          ],
        ),
        TaskListBuilder(battleTaskList: listBattle1),
        const SizedBox(height: 40.0),
      ],
    );
  }

  Obx buildButton() {
    return Obx(() {
      return AnimatedOpacity(
        opacity: controller.visible.value == true ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 300),
        child: CustomElevatedButton(
          text: "Редактировать",
          function: () {
            Get.toNamed(Routes.CREATE_BATTLE, arguments: [true, battle]);
          },
        ),
      );
    });
  }
}
