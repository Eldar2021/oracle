import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/data/models/offers_model/offers_model.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_image_container.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/detail_battle.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/offer_detail.dart';
import 'package:oracle/app/modules/battle_detail/controllers/battle_detail_tab_bar_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/clored_tab_bar.dart';

class BattleDetailViewTabBar extends GetView<BattleDetailTabBarController> {
  const BattleDetailViewTabBar({
    required this.battle,
  });

  final Battle battle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              _buildSliverAppBar(),
            ];
          },
          body: _buildBody(),
        ),
      ),
    );
  }

  SliverAppBar _buildSliverAppBar() {
    return SliverAppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: MyColors.backgroundColor,
      ),
      flexibleSpace: BattleImageContainer(battle: battle),
      expandedHeight: Get.width * 0.6,
      floating: true,
      pinned: true,
      bottom: ColoredTabBar(
        color: MyColors.backgroundColor,
        tabBar: TabBar(
          indicatorColor: MyColors.moneyTextColor,
          tabs: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Детали сражения"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Предложения (31)"),
            ),
          ],
        ),
      ),
    );
  }

  TabBarView _buildBody() {
    return TabBarView(
      children: [
        DetailBattle(battle: battle),
        OffersDetail(offers: offers),
      ],
    );
  }
}
