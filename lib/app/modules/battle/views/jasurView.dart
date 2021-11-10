import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/link_text_widget.dart';

class JasurBekView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: double.infinity),
          child: _buildBody(),
        ),
      ),
    );
  }

  Padding _buildBody() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Center(
            child: LinkText(
              text1: "Выбрать пользователя ",
              text2: "Леха Lewa О.\n",
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
                "3000 com",
                style: Get.textTheme.bodyText1!
                    .copyWith(color: MyColors.moneyTextColor),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
            child: Divider(color: MyColors.whiteColor),
          ),
          const SizedBox(height: 20),
          Text("Sed ut perspiciatis unde :",
              textAlign: TextAlign.start, style: Get.textTheme.bodyText1!),
          const SizedBox(height: 25),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: 2,
            itemBuilder: (context, index) {
              return DescriptionCheck(
                text:
                    "Еomnis iste natus error sit voluptatem accusantium doloremque",
              );
            },
          ),
          const SizedBox(height: 135),
          Center(
            child: LinkText(
              text1: "Нажимая “Выбрать исполниеля” Вы соглашаетесь с\n ",
              text2: "Правилами платежного сервиса ",
              text3: "и ",
              text4: "Правилами сервиса\n“Сделка без риска”",
              styletex1: Get.textTheme.caption!
                  .copyWith(color: MyColors.grayWhiteColor),
              styletex2: Get.textTheme.caption!
                  .copyWith(color: MyColors.linkTextColor),
              styletex3: Get.textTheme.caption!
                  .copyWith(color: MyColors.grayWhiteColor),
              styletex4: Get.textTheme.caption!
                  .copyWith(color: MyColors.linkTextColor),
              function: () {},
            ),
          ),
          const SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(
                function: () {},
                width: Get.width * 0.7,
                height: 42,
                text: "Выбрать исполнителем",
              ),
            ],
          ),
          const SizedBox(height: 22),
        ],
      ),
    );
  }
}


class DescriptionCheck extends StatelessWidget {
  const DescriptionCheck({
    Key? key,
    this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(Assets.arrayTrue),
          const SizedBox(width: 12),
          Expanded(
              child: Text(
                text ?? "",
                style: Get.textTheme.bodyText2!,
              )),
        ],
      ),
    );
  }
}