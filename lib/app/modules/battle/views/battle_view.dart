import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oracle/app/modules/battle/views/battle_performer_view.dart';

import '../controllers/battle_controller.dart';

class BattleView extends GetView<BattleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BattleView'),
        centerTitle: true,
      ),
      body: BattlePerfotmerView(),
    );
  }
}
