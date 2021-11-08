import 'package:flutter/material.dart';
import 'package:oracle/widgets/custom_widgets/drawer_sidebar.dart';

class HomeView extends StatelessWidget {
  //final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(),
      body: Center(
        child: Text("home"),
      ),
    );
  }
}
