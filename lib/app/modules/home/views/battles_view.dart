import 'package:flutter/material.dart';

class BattlesView extends StatelessWidget {
  //final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Battles'),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Battles"),
      )
    );
  }
}