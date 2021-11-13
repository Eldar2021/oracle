import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/data/models/battle_task_model/battle_task_model.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battke_format_battle.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_customer.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_description.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_image_container.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_name_category.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_offset_count.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_rate.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_start_time.dart';
import 'package:oracle/app/modules/battle_detail/controllers/battle_detail_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/custom_divider.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/task_list_builder.dart';
import 'package:oracle/widgets/custom_widgets/user_ph_tl_wh_widget.dart';
import 'package:oracle/widgets/custom_widgets/win_defeated_container.dart';

class BattleDetailView extends GetView<BattleDetailController> {
  const BattleDetailView({
    required this.battle,
    this.status,
    this.isStatus = false,
  });

  final Battle battle;
  final String? status;
  final bool isStatus;

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
        BattleImageContainer(battle: battle),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 18.0),
              BattleNameCategory(battle: battle),
              const SizedBox(height: 17.0),
              BattleDescriptions(battle: battle),
              const SizedBox(height: 30.0),
              BattleStartTime(battle: battle),
              const SizedBox(height: 10.0),
              BattleRate(battle: battle),
              const SizedBox(height: 10.0),
              BattleFormatBattle(battle: battle),
              const SizedBox(height: 20.0),
              CustomDivider(),
              const SizedBox(height: 20.0),
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

  // Container _battleWinner() {
  //   return Container(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text("Сражение"),
  //         const SizedBox(height: 20),
  //         _winnerDefeatedCompleted(
  //           user1: battle.winner ?? "",
  //           user2: battle.defeated ?? "",
  //           rate1: battle.winRate,
  //           rate2: battle.defeatedRate,
  //           winner: battle.winner,
  //           winnerRate: battle.winRate,
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  // Container _battleNov() {
  //   return Container(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text("Сражение"),
  //         const SizedBox(height: 20),
  //         _winnerDefeatedCompleted(
  //           user1: battle.winner ?? "",
  //           user2: battle.defeated ?? "",
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  // Row _winnerDefeatedCompleted({
  //   required String user1,
  //   required String user2,
  //   String? rate1,
  //   String? rate2,
  //   String? winner,
  //   String? winnerRate,
  // }) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: [
  //       Expanded(
  //         child: Column(
  //           children: [
  //             Row(
  //               children: [
  //                 WinDefeatedContainer(
  //                   bgColor: MyColors.winContainerColor,
  //                   name: user1,
  //                   rate: rate1 ?? "0",
  //                 ),
  //                 _horizontalDivider(),
  //                 //CustomDivider()
  //               ],
  //             ),
  //             const SizedBox(height: 50),
  //             Row(
  //               children: [
  //                 WinDefeatedContainer(
  //                   bgColor: MyColors.buttonBgColor,
  //                   name: user2,
  //                   rate: rate2 ?? "0",
  //                 ),
  //                 _horizontalDivider(),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //       _verticalDivider(),
  //       Expanded(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.end,
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: [
  //             winner != null
  //                 ? SvgPicture.asset(Assets.componentsCrown, height: 17.0)
  //                 : SizedBox(height: 17.0),
  //             const SizedBox(height: 7.0),
  //             Center(
  //               child: Row(
  //                 children: [
  //                   _horizontalDivider(),
  //                   WinDefeatedContainer(
  //                     bgColor: MyColors.winContainerColor,
  //                     name: winner ?? "-",
  //                     rate: winnerRate ?? "",
  //                   ),
  //                   //CustomDivider()
  //                 ],
  //               ),
  //             ),
  //             const SizedBox(height: 24.0),
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }
  //
  // SizedBox _verticalDivider() {
  //   return SizedBox(
  //     height: Get.height * 0.138,
  //     width: 3,
  //     child: VerticalDivider(
  //       color: MyColors.whiteColor,
  //       width: 2,
  //       thickness: 1.0,
  //     ),
  //   );
  // }
  //
  // SizedBox _horizontalDivider() {
  //   return SizedBox(
  //     height: 3,
  //     width: 21,
  //     child: Divider(
  //       color: MyColors.whiteColor,
  //       height: 2,
  //       thickness: 1.0,
  //     ),
  //   );
  // }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('BattleDetailView'),
      centerTitle: true,
    );
  }
}
