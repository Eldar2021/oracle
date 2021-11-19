import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/filter/controllers/filter_controller.dart';
import 'package:oracle/app/modules/filter/widgets/selected_container.dart';

class SortView extends GetView<FilterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: buildBody(),
        ),
      ),
    );
  }

  Padding buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SelectedContainer(
            controller: controller,
            text: "По актуальности",
            onTab: (sort) {
              controller.selectedSort(sort);
            },
          ),
          SelectedContainer(
            controller: controller,
            text: "По цене, сначала дорогие",
            onTab: (sort) {
              controller.selectedSort(sort);
            },
          ),
          SelectedContainer(
            controller: controller,
            text: "По цене, сначала дешевые",
            onTab: (sort) {
              controller.selectedSort(sort);
            },
          ),
          SelectedContainer(
            controller: controller,
            text: "По дата, сначала старые",
            onTab: (sort) {
              controller.selectedSort(sort);
            },
          ),
          SelectedContainer(
            controller: controller,
            text: "По дата, сначала новые",
            onTab: (sort) {
              controller.selectedSort(sort);
            },
          ),
          SelectedContainer(
            controller: controller,
            text: "Больше всего предложений",
            onTab: (sort) {
              controller.selectedSort(sort);
            },
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Сортировать"),
      centerTitle: true,
    );
  }
}
