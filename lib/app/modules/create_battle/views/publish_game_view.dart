import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../widgets/preview/preview_players.dart';
import '../widgets/preview/customer.dart';
import '../controllers/create_battle_controller.dart';
import '../widgets/preview/description.dart';
import '../widgets/preview/format_rate_time.dart';
import '../widgets/preview/image_widget.dart';
import '../widgets/preview/name_categoty_time.dart';
import 'package:oracle/app/modules/profile/widgets/user_ph_tl_wh_widget.dart';
import 'package:oracle/widgets/custom_widgets/custom_divider.dart';

class PublishGameView extends GetView<CreateBattleController> {
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageContainer(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PreviewNameCategoryTime(
                name: controller.title.value.text,
              ),
              const SizedBox(height: 25.0),
              PreviewDescriptions(
                description: controller.description.value.text,
              ),
              const SizedBox(height: 30.0),
              PreviewFormatTime(
                text: 'Игра начинается:',
                value: controller.dateTime.value.text,
              ),
              const SizedBox(height: 15.0),
              PreviewFormatTime(
                text: 'Ставка:',
                value: "${controller.rate.value.text} сом",
                valueColor: MyColors.moneyTextColor,
              ),
              const SizedBox(height: 15.0),
              PreviewFormatTime(
                text: 'Формат игры:',
                value: controller.formatBattle.value.text,
              ),
              const SizedBox(height: 15.0),
              controller.formatBattle.value.text != "1x1"
                  ? _isCommand()
                  : Container(),
              CustomDivider(),
              const SizedBox(height: 52.0),
              Text("Заказчик"),
              const SizedBox(height: 17.0),
              PreviewCustomer(user: controller.capitan),
              const SizedBox(height: 30.0),
              UserPhoneTlWhatsApp(
                ph: controller.capitan.phone,
                tl: controller.capitan.telegram,
                wh: controller.capitan.whatsApp,
              ),
              const SizedBox(height: 70.0),
              _button(),
              const SizedBox(height: 70.0),
            ],
          ),
        ),
      ],
    );
  }

  Center _button() {
    return Center(
      child: CustomElevatedButton(
        text: "Опубликовать",
        function: () {
          controller.publish();
        },
      ),
    );
  }

  Column _isCommand() {
    return Column(
      children: [
        PreviewFormatTime(
          text: 'Команда:',
          value: controller.nameCommand.value.text,
          valueColor: MyColors.linkTextColor,
        ),
        const SizedBox(height: 5.0),
        PreviewPlayers(
          capitan: controller.capitan,
          players: controller.selectUsers,
          text: "Состав команды",
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('Ваша сражения'),
      centerTitle: true,
    );
  }
}
