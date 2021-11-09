import 'package:flutter/material.dart';

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
      body: Center(
        child: Text(
          'BattleDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
