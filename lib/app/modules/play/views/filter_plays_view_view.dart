import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/list_builder/battle_list_builder.dart';
import '../controllers/filter_plays_view_controller.dart';

class FilterPlaysViewView extends GetView<FilterPlaysViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.FILTER);
            },
            icon: SvgPicture.asset(Assets.componentsFilter),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Obx(
              () {
            if (controller.battles.isEmpty) {
              return buildCircularProgress();
            } else {
              return BattlesListBuilder(battleList: controller.battles);
            }
          },
        ),
      ),
    );
  }

  Center buildCircularProgress() => Center(child: CircularProgressIndicator());
}
