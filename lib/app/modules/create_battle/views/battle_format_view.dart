import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/routes/app_pages.dart';
import '../controllers/create_battle_controller.dart';
import '../widgets/command_empty_create_player.dart';
import '../widgets/command_user_card_create.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/link_text_widget.dart';
import 'package:oracle/widgets/custom_widgets/top_up_balance.dart';
import 'package:select_form_field/select_form_field.dart';

class BattleFormatView extends GetView<CreateBattleController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: double.infinity),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
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
        const SizedBox(height: 10),
        _formatBattle(),
        const SizedBox(height: 25),
        _commandName(),
        Text("Игрок", style: Get.textTheme.bodyText1),
        const SizedBox(height: 10),
        CommandUserCreateCard(user: controller.user, isCapitan: true),
        const SizedBox(height: 10),
        _buildListViewPlayerBuilder(),
        _buildListViewBuilder(),
        const SizedBox(height: 10),
        _identification(),
        const SizedBox(height: 40),
        _button(),
        const SizedBox(height: 20),
        _balance(),
      ],
    );
  }

  Obx _commandName() {
    return Obx(
      () {
        controller.command.value;
        return controller.formatBattle.value.text != "1x1"
            ? Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Команда"),
                    const SizedBox(height: 10),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.text,
                      controller: controller.nameCommand.value,
                      decoration: InputDecoration(
                        hintText: "Введите название команды",
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              )
            : Container();
      },
    );
  }

  Center _button() {
    return Center(
      child: CustomElevatedButton(
        function: () {
          controller.preview();
        },
        text: "Предварительный просмотр",
        width: 255,
      ),
    );
  }

  SelectFormField _formatBattle() {
    return SelectFormField(
      controller: controller.formatBattle.value,
      hintText: "Формат игры",
      items: controller.items,
      onChanged: (val) {
        controller.clear();
        controller.plus();
        print(val);
        controller.changeFormat(val);
      },
    );
  }

  Column _balance() {
    return Column(
      children: [
        controller.user.money! < double.parse(controller.rate.value.text)
            ? TopUpBalance(
                balance: controller.user.money,
                text:
                    "На вашем балансе недостаточно средств для создания сражения",
              )
            : Container(),
      ],
    );
  }

  Center _identification() {
    return Center(
      child: LinkText(
        text1: "Ваш логин должен быть идентичен \nс логином в ",
        text2: "Iccup.com",
        styletex1:
            Get.textTheme.caption!.copyWith(color: MyColors.grayTextColor),
        styletex2:
            Get.textTheme.caption!.copyWith(color: MyColors.categoryTextColor),
        function: () {},
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Get.offNamed(Routes.CREATE_BATTLE);
        },
      ),
      title: Text("Создание сражения"),
      centerTitle: true,
    );
  }

  Obx _buildListViewBuilder() {
    return Obx(() {
      return ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: controller.countList.value,
        itemBuilder: (context, index) {
          return CommandEmptyCreatePlayer();
        },
      );
    });
  }

  Obx _buildListViewPlayerBuilder() {
    return Obx(() {
      return ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: controller.notEmptyList.value,
        itemBuilder: (context, index) {
          UserModel user = controller.selectUsers[index];
          return CommandUserCreateCard(
            user: user,
            backX: (user) {
              controller.selectRemoveUsersFunc(user);
            },
          );
        },
      );
    });
  }
}
