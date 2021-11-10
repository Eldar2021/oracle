import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/data/models/battle_task_model/battle_task_model.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/battle_detail/controllers/battle_detail_controller.dart';
import 'package:oracle/widgets/custom_widgets/battle_customer.dart';
import 'package:oracle/widgets/custom_widgets/battle_descriptiop_rate.dart';
import 'package:oracle/widgets/custom_widgets/battle_name_category.dart';
import 'package:oracle/widgets/custom_widgets/battle_viewOffers_count.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/task_list_builder.dart';
import 'package:oracle/widgets/custom_widgets/user_ph_tl_wh_widget.dart';

class BattleDetailView extends GetView<BattleDetailController> {
  BattleDetailView({required this.battle});

  final Battle battle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: _buildBody(),
        ),
      ),
    );
  }

  Column _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: Get.width,
          height: Get.width * 0.5,
          child: Image.asset(battle.getGameIcon, fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BattleNameCategory(battle: battle),
              const SizedBox(height: 18.0),
              BattleDescriptionRate(battle: battle),
              const SizedBox(height: 17.0),
              BattleViewsOffersCount(battle: battle),
              const SizedBox(height: 52.0),
              Text("Заказчик"),
              const SizedBox(height: 17.0),
              BattleCustomer(user: userModel1),
              const SizedBox(height: 30.0),
              UserPhoneTlWhatsApp(),
              const SizedBox(height: 40.0),
              Text("Похожие задания"),
              TaskListBuilder(battleTaskList: battleTaskList1),
              const SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                    text: "Откликнуться",
                    function: () {},
                  ),
                ],
              ),
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
