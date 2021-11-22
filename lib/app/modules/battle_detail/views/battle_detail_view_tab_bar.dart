import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/offers_model/offers_model.dart';
import '../widgets/battle_image_container.dart';
import '../widgets/detail_battle.dart';
import '../widgets/offer_detail.dart';
import '../controllers/battle_detail_tab_bar_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/clored_tab_bar.dart';

class BattleDetailViewTabBar extends GetView<BattleDetailTabBarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          controller: controller.scrollController,
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
      flexibleSpace: FlexibleSpaceBar(
        background: BattleImageContainer(battle: controller.battle),
      ),
      expandedHeight: Get.width * 0.7,
      floating: true,
      pinned: true,
      bottom: ColoredTabBar(
        color: MyColors.backgroundColor,
        tabBar: TabBar(
          indicatorColor: MyColors.moneyTextColor,
          tabs: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, top: 10),
              child: Text("Детали сражения"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, top: 10),
              child: Text(
                  "Предложения (${controller.battle.offers?.length ?? 0})"),
            ),
          ],
        ),
      ),
    );
  }

  TabBarView _buildBody() {
    return TabBarView(
      children: [
        DetailBattle(
          battle: controller.battle,
          controller: controller,
        ),
        OffersDetail(offers: offers),
      ],
    );
  }
}
