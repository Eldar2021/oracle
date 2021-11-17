import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/home/controllers/play_detail_controller.dart';
import 'package:oracle/app/modules/home/widgets/name_battle_row.dart';
import 'package:oracle/widgets/list_builder/battle_list_builder.dart';

class PlayDetailView extends GetView<PlayDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: _buildBody(),
        ),
      ),
    );
  }

  Column _buildBody() {
    return Column(
      children: [
        Container(
          width: Get.width,
          height: Get.width * 0.5,
          child: Image.asset(controller.play.img),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryNameRow(play: controller.play),
                const SizedBox(height: 60),
                BattlesListBuilder(
                  shrinkWrap: true,
                  primary: false,
                  battleList: controller.play.listBattle ?? [],
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        )
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(controller.play.name),
      centerTitle: true,
    );
  }
}
