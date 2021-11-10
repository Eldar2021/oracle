import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_battle_controller.dart';

class CreateBattleView extends GetView<CreateBattleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CreateBattleView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CreateBattleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
