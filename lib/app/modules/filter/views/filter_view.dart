import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';

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
            onTab: () {},
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
          TextFieldContainer(
            controller: controller,
            text: "По актуальности",
            icon: Assets.arrayArrayRight,
            onTab: () {},
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(function: () {}),
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
        icon: SvgPicture.asset(Assets.arrayBackX, width: 20.0),
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

class TextFieldWithText extends StatelessWidget {
  const TextFieldWithText({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 18, bottom: 18),
        margin: EdgeInsets.only(bottom: 10, top: 15),
        decoration: BoxDecoration(
          color: MyColors.textFieldBgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(text, style: Get.textTheme.bodyText2),
            ),
            Expanded(
              flex: 4,
              child: TextField(
                decoration: new InputDecoration.collapsed(
                  hintText: "",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    required this.text,
    required this.onTab,
    this.icon,
    this.bgColor = MyColors.textFieldBgColor,
    this.selected,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final String text;
  final String? icon;
  final Color bgColor;
  final Function onTab;
  final bool? selected;
  final FilterController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return InkWell(
        onTap: (){
          onTab(text);
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 18, bottom: 18),
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: controller.typeBattle.value == text
                ? MyColors.elevatedButtonBgColor
                : bgColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("$text", style: Get.textTheme.bodyText1),
              icon != null ? SvgPicture.asset(icon!) : Container(),
            ],
          ),
        ),
      );
    });
  }
}
