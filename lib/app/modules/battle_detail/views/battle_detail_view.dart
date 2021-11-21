import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battke_format_battle.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_customer.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_description.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_image_container.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_name_category.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_offset_count.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_rate.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_start_time.dart';
import 'package:oracle/app/modules/battle_detail/controllers/battle_detail_controller.dart';
import 'package:oracle/widgets/custom_widgets/custom_divider.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/list_builder/task_list_builder.dart';
import 'package:oracle/app/modules/profile/widgets/user_ph_tl_wh_widget.dart';

class BattleDetailView extends GetView<BattleDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        controller: controller.scrollController,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: _buildBody(),
        ),
      ),
      floatingActionButton: _buildFloat(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Obx _buildFloat() {
    return Obx(() {
      return AnimatedOpacity(
        opacity: controller.visible.value == true ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 600),
        child: CustomElevatedButton(
          text: "Откликнуться",
          function: () {
            controller.respond();
          },
        ),
      );
    });
  }

  Column _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BattleImageContainer(battle: controller.battle),
        Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 10, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BattleNameCategory(battle: controller.battle),
              const SizedBox(height: 15.0),
              BattleDescriptions(battle: controller.battle),
              const SizedBox(height: 30.0),
              BattleStartTime(battle: controller.battle),
              const SizedBox(height: 10.0),
              BattleRate(battle: controller.battle),
              const SizedBox(height: 10.0),
              BattleFormatBattle(battle: controller.battle),
              const SizedBox(height: 20.0),
              CustomDivider(),
              const SizedBox(height: 20.0),
              BattleViewsOffersCount(battle: controller.battle),
              const SizedBox(height: 52.0),
              Text("Заказчик"),
              const SizedBox(height: 17.0),
              BattleCustomer(user: controller.battle.customer),
              const SizedBox(height: 30.0),
              UserPhoneTlWhatsApp(
                ph: controller.battle.customer.phone,
                tl: controller.battle.customer.telegram,
                wh: controller.battle.customer.whatsApp,
              ),
              const SizedBox(height: 40.0),
              Text("Похожие задания"),
              TaskListBuilder(battleTaskList: controller.battle.tasks ?? []),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('BattleDetailView'),
      centerTitle: true,
    );
  }
}
