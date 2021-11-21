import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/login/views/login_view.dart';
import 'package:oracle/constants/color_constants.dart';
import '../controllers/battle_controller.dart';
import 'i_customer_view.dart';
import 'i_performer_view.dart';

class BattleView extends GetView<BattleController> {

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return controller.isToken == true
            ? DefaultTabController(
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
                      IPerformer(listBattle: controller.listBattles),
                      ICustomer(listBattle: controller.listBattles),
                    ],
                  ),
                ),
              )
            : LoginView();
      },
    );
  }
}
