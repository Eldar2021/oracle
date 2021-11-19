import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/descrip_check.dart';
import 'package:oracle/app/modules/battle_detail/controllers/select_performer_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/link_text_widget.dart';

class SelectPerformerView extends GetView<SelectPerformerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: double.infinity),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: _buildBody(),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Выбор исполнителя"),
      centerTitle: true,
    );
  }

  Column _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Center(
          child: LinkText(
            text1: "Выбрать пользователя ",
            text2: "${controller.user.name}\n",
            text3: "исполнителем?",
            styletex1: Get.textTheme.bodyText1!,
            styletex2: Get.textTheme.bodyText1!
                .copyWith(color: MyColors.linkTextColor),
            function: () {},
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Стоимость сражения:"),
            Text(
              "${controller.rate} сом",
              style: Get.textTheme.bodyText1!
                  .copyWith(color: MyColors.moneyTextColor),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
          child: Divider(color: MyColors.grayTextColor),
        ),
        const SizedBox(height: 20),
        Text(
          "Sed ut perspiciatis unde :",
          textAlign: TextAlign.start,
          style: Get.textTheme.bodyText1!,
        ),
        const SizedBox(height: 25),
        DescriptionCheck(
          text: "Еomnis iste natus error sit voluptatem accusantium doloremque",
        ),
        const SizedBox(height: 15),
        DescriptionCheck(
          text: "Еomnis iste natus error sit voluptatem accusantium doloremque",
        ),
        const SizedBox(height: 135),
        LinkText(
          text1: "Нажимая “Выбрать исполниеля” Вы соглашаетесь с ",
          text2:
              "Правилами платежного сервиса и Правилами сервиса “Сделка без риска”",
          styletex1: Get.textTheme.caption!,
          styletex2: Get.textTheme.caption!,
          function: () {},
        ),
        const SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              function: () {},
              width: 210,
              height: 42,
              text: "Выбрать исполнителем",
            ),
          ],
        ),
      ],
    );
  }
}
