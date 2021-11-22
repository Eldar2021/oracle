import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/respond/widgets/battle_command_widget.dart';
import 'package:oracle/app/modules/respond/widgets/top_up_balance.dart';
import '../controllers/respond_battle_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_divider.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';

class RespondBattleView extends GetView<RespondBattleController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            child: Form(
              key: _formKey,
              child: _buildBody(),
            ),
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
          "Текст отклика",
          style: Get.textTheme.caption!.copyWith(
            color: MyColors.whiteColor,
          ),
        ),
        const SizedBox(height: 15),
        TextFormField(
          controller: controller.description.value,
          maxLines: null,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hintText: "Расскажите почему именно вы должны сражаться",
          ),
          validator: (val) {
            if (val!.isEmpty) {
              return "";
            } else {
              return null;
            }
          },
        ),
        const SizedBox(height: 45),
        controller.battle.formatBattle == "1х1"
            ? Container()
            : BattleCommand(controller: controller),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Стоимость сражения:"),
            Text(
              "${controller.battle.rate} сом",
              style: Get.textTheme.bodyText1!.copyWith(
                color: MyColors.orangeColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        CustomDivider(),
        const SizedBox(height: 100),
        Center(
          child: CustomElevatedButton(
            function: () {
              if (_formKey.currentState!.validate()) {
                print('Form is valid');
                controller.respond();
              } else {
                print('Form is invalid');
              }
            },
            text: "Откликнуться",
          ),
        ),
        const SizedBox(height: 20),
        controller.user.money! < controller.battle.rate!
            ? TopUpBalance(
                balance: controller.user.money,
                text:
                    "На вашем балансе недостаточно средств для создания сражения",
              )
            : Container(),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Сражение №${controller.battle.id}"),
      centerTitle: true,
    );
  }
}

