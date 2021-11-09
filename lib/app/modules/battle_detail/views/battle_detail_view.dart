import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oracle/widgets/custom_widgets/battle_detaile_conatiner.dart';
import 'package:oracle/widgets/custom_widgets/user_ph_tl_wh_widget.dart';


import 'package:get/get.dart';


import '../controllers/battle_detail_controller.dart';

class BattleDetailView extends GetView<BattleDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BattleDetailView'),
        centerTitle: true,
      ),

      body: Column(
        children: [
          BattleDetaileContainer(
            battleTitle:
                "Dota 2, Играем на SF, мид до 2 смертей или до падения т1",
            battleCreatedTime: "Создано сегодня, 13:10",
            battleCategory: "Категория “Dota 2”",
            battleDecrioption:
                """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum""",
            battleStartTime: "Игра начинается: 20:00, 05.06.21",
            battleBet: "Ставка: 1000 com",
            battleStatus: "Статус: Отменен",
          ),
          SizedBox(height: 20),
          UserPhoneTlWhatsApp(),
        ],

      body: Center(
        child: Text(
          'BattleDetailView is working',
          style: TextStyle(fontSize: 20),
        ),

      ),
    );
  }
}


class BattleDetailController {
}


