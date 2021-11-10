import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/constants/color_constants.dart';

import '../controllers/battle_controller.dart';
import 'i_customer_view 2.dart';
import 'i_performer_view 2.dart';

class BattleView extends GetView<BattleController> {
  const BattleView({this.listBattles}) : super();
  final List<Battle>? listBattles;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Мои сражения'),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: MyColors.ratingStarColor,
            tabs: [
              Tab(text: 'Я исполнитель'),
              Tab(text: 'Я заказчик'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            IPerformer(listBattle: listBattle1),
            ICustomer(listBattle: null),
          ],
        ),
      ),
    );
  }
}
