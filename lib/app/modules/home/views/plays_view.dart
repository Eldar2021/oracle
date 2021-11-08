import 'package:flutter/material.dart';

class PlaysView extends StatelessWidget {
  //final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Plays'),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Plays"),
        )
    );
  }
}