import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/home/controllers/home_controller.dart';
import 'package:oracle/widgets/custom_widgets/battle_list_view.dart';

class HomeView extends GetView<HomeController> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Obx(
          () {
            if (controller.battles.isEmpty) {
              return buildCircularProgress();
            } else {
              return BattlesListBuilder(controller: controller);
            }
          },
        ),
      ),
    );
  }

  Center buildCircularProgress() => Center(child: CircularProgressIndicator());
}
