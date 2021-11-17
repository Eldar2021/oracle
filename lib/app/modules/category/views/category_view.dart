import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({required this.battle}) : super();

  final Battle battle;

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
        // Container(
        //   width: Get.width,
        //   height: Get.width * 0.5,
        //   child: Image.asset(battle.getGameIcon, fit: BoxFit.cover),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(20.0),
        //   child: Container(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         CategoryNameRow(play: play1),
        //         const SizedBox(height: 60),
        //         BattlesListBuilder(
        //           shrinkWrap: true,
        //           primary: false,
        //           battleList: listBattle1,
        //         ),
        //         const SizedBox(height: 60),
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(battle.title),
      centerTitle: true,
    );
  }
}
