import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../widgets/selected_category.dart';
import '../controllers/filter_controller.dart';

class CategoryView extends GetView<FilterController> {
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
          SelectedCategory(
            controller: controller,
            text: "По актуальности",
            onTab: (category) async {
              controller.addRemoveCategory(category);
            },
          ),
          SelectedCategory(
            controller: controller,
            text: "По цене, сначала дорогие",
            onTab: (category) async {
              controller.addRemoveCategory(category);
            },
          ),
          SelectedCategory(
            controller: controller,
            text: "По цене, сначала дешевые",
            onTab: (category) async {
              controller.addRemoveCategory(category);
            },
          ),
          SelectedCategory(
            controller: controller,
            text: "По дата, сначала старые",
            onTab: (category) async {
              controller.addRemoveCategory(category);
            },
          ),
          SelectedCategory(
            controller: controller,
            text: "По дата, сначала новые",
            onTab: (category) async {
              controller.addRemoveCategory(category);
            },
          ),
          SelectedCategory(
            controller: controller,
            text: "Больше всего предложений",
            onTab: (category) async {
              controller.addRemoveCategory(category);
            },
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Категория"),
      centerTitle: true,
    );
  }
}
