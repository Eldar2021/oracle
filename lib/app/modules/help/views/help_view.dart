import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../controllers/help_controller.dart';

class HelpView extends GetView<HelpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: _buildBody(),
          ),
        ),
      ),
    );
  }

  Column _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididun?",
          style: Get.textTheme.subtitle1!.copyWith(height: 1.5),
        ),
        SizedBox(height: 15.0),
        Text(
          "Lut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu ",
          style: Get.textTheme.caption!.copyWith(color: MyColors.grayTextColor),
        ),
        SizedBox(height: 35.0),
        Text("Электронная почта"),
        SizedBox(height: 10.0),
        TextFormField(
          decoration: InputDecoration(hintText: "Эл. почта"),
        ),
        SizedBox(height: 25.0),
        Text("Электронная почта"),
        SizedBox(height: 10.0),
        TextFormField(
          maxLines: 7,
          decoration: InputDecoration(
            hintText: "Оишите проблему более подробно",
          ),
        ),
        SizedBox(height: 20.0),
        Center(
          child: CustomElevatedButton(
            text: "Отпраить",
            function: () {},
          ),
        ),
        SizedBox(height: 40.0),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('Помощь'),
      centerTitle: true,
    );
  }
}
