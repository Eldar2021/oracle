import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_customer.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_description.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_image_container.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_name_category.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_offset_count.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_rate.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_start_time.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_status.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_winner_row.dart';
import 'package:oracle/app/modules/battle_detail/controllers/battle_detail_status_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/custom_divider.dart';
import 'package:oracle/app/modules/profile/widgets/user_ph_tl_wh_widget.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/win_defeated_container.dart';

class BattleDetailStatusView extends GetView<BattleDetailStatusController> {
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
        BattleImageContainer(battle: controller.battle),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 18.0),
              BattleNameCategory(battle: controller.battle),
              const SizedBox(height: 17.0),
              BattleDescriptions(battle: controller.battle),
              const SizedBox(height: 30.0),
              BattleStartTime(battle: controller.battle),
              const SizedBox(height: 10.0),
              BattleRate(battle: controller.battle),
              const SizedBox(height: 10.0),
              BattleStatus(battle: controller.battle),
              const SizedBox(height: 10.0),
              controller.battle.statusBattle == "Завершен"
                  ? BattleWinnerRow(battle: controller.battle)
                  : Container(),
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
              controller.battle.statusBattle == "Завершен"
                  ? _battleWinner()
                  : controller.battle.statusBattle == "В ожидании"
                      ? _battleNov()
                      : Container(),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ],
    );
  }

  Container _battleWinner() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Сражение"),
          const SizedBox(height: 20),
          _winnerDefeatedCompleted(
            user1: controller.battle.winner ?? "",
            user2: controller.battle.defeated ?? "",
            rate1: controller.battle.winRate,
            rate2: controller.battle.defeatedRate,
            winner: controller.battle.winner,
            winnerRate: controller.battle.winRate,
          ),
        ],
      ),
    );
  }

  Container _battleNov() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Сражение"),
          const SizedBox(height: 20),
          _winnerDefeatedCompleted(
            user1: controller.battle.winner ?? "",
            user2: controller.battle.defeated ?? "",
          ),
        ],
      ),
    );
  }

  Row _winnerDefeatedCompleted({
    required String user1,
    required String user2,
    String? rate1,
    String? rate2,
    String? winner,
    String? winnerRate,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              WinDefeatedContainer(
                borderColor: MyColors.linkTextColor,
                bgColor: MyColors.winContainerColor,
                name: user1,
                rate: rate1 ?? "0",
              ),
              const SizedBox(height: 50),
              WinDefeatedContainer(
                borderColor: MyColors.redColor,
                bgColor: MyColors.winContainerColor,
                name: user2,
                rate: rate2 ?? "0",
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: SvgPicture.asset(
            Assets.arrayDivider,
            color: MyColors.whiteColor,
            fit: BoxFit.fill,
          ),
        ),
        //_verticalDivider(),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              winner != null
                  ? SvgPicture.asset(Assets.componentsCrown, height: 17.0)
                  : SizedBox(height: 17.0),
              const SizedBox(height: 7.0),
              Center(
                child: WinDefeatedContainer(
                  borderColor: MyColors.whiteColor,
                  bgColor: MyColors.winContainerColor,
                  name: winner ?? "-",
                  rate: winnerRate ?? "",
                ),
              ),
              const SizedBox(height: 24.0),
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
