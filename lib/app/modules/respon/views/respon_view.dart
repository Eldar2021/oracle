import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/respon_controller.dart';

class ResponView extends GetView<ResponController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ResponView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ResponView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
