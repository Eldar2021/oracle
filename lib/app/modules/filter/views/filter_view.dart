import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/text_field_container.dart';
import 'package:oracle/widgets/custom_widgets/text_field_with_text.dart';

import '../controllers/filter_controller.dart';

class FilterView extends GetView<FilterController> {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Категории", style: Get.textTheme.bodyText1),
          const SizedBox(height: 15),
          TextFieldContainer(
            controller: controller,
            text: "Все категории",
            icon: Assets.arrayArrayRight,
            onTab: (val) {
              Get.toNamed(Routes.CATEGORY);
            },
          ),
          const SizedBox(height: 25),
          Text("Стоимость сражения", style: Get.textTheme.bodyText1),
          Row(
            children: [
              TextFieldWithText(text: "от"),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: SvgPicture.asset(Assets.arraySolid),
              ),
              TextFieldWithText(
                text: "до",
              ),
            ],
          ),
          const SizedBox(height: 25),
          Text("Формат сражения", style: Get.textTheme.bodyText1),
          const SizedBox(height: 15),
          TextFieldContainer(
            controller: controller,
            text: "1х1",
            onTab: (text) {
              controller.selectedBattle(text);
            },
          ),
          TextFieldContainer(
            controller: controller,
            text: "3х3",
            onTab: (text) {
              controller.selectedBattle(text);
            },
          ),
          TextFieldContainer(
            controller: controller,
            selected: true,
            text: "5х5",
            onTab: (text) {
              controller.selectedBattle(text);
            },
          ),
          const SizedBox(height: 15),
          Text("Сортировать", style: Get.textTheme.bodyText1),
          const SizedBox(height: 15),
          Obx(() {
            return TextFieldContainer(
              controller: controller,
              text: controller.typeSort.value,
              icon: Assets.arrayArrayRight,
              onTab: (val) {
                Get.toNamed(Routes.SORT);
              },
            );
          }),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(
                width: 235,
                function: () {},
                text: "Показать 23 278 сражений",
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: SvgPicture.asset(Assets.arrayBackX),
      ),
      title: Text('Фильтр'),
      centerTitle: true,
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Очистить",
            style: Get.textTheme.bodyText2!.copyWith(
              color: MyColors.actionTextColor,
            ),
          ),
        )
      ],
    );
  }
}
