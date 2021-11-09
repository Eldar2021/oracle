import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/play_controller.dart';

class PlayView extends GetView<PlayController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PlayView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PlayView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
