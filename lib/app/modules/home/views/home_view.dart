import 'package:flutter/material.dart';

class HomeView extends StatelessWidget{
  //final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(child: Text("home"),),
    );
  }
}
