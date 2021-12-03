import '../controllers/create_battle_controller.dart';
import 'package:oracle/service/source_bottom_sheet.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddGamerView extends GetView<CreateBattleController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
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
                child: buildBody(context),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Поиска игрока",
          style: Get.textTheme.bodyText1,
        ),
        const SizedBox(height: 10),
        _buildSearchByNameNick(context),
        const SizedBox(height: 25),
        Text(
          "Если вы не нашли в поиске\nнапишите имя, фамилие и ник здесь",
          style: Get.textTheme.bodyText1,
        ),
        const SizedBox(height: 10),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller.searchByName.value,
          decoration: InputDecoration(
            hintText: "Введите имя",
            hintStyle: Get.textTheme.bodyText2!
                .copyWith(color: MyColors.grayWhiteColor),
          ),
          validator: (val) {
            if (val!.isEmpty) {
              return "Это поле должно быть заполнено";
            } else {
              return null;
            }
          },
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller.searchByLastName.value,
          decoration: InputDecoration(
            hintText: "Введите фамилие",
            hintStyle: Get.textTheme.bodyText2!.copyWith(
              color: MyColors.grayWhiteColor,
            ),
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller.searchByNick.value,
          decoration: InputDecoration(
            hintText: "Введите ник",
            hintStyle: Get.textTheme.bodyText2!.copyWith(
              color: MyColors.grayWhiteColor,
            ),
          ),
        ),
        const SizedBox(height: 25),
        Center(
          child: CustomElevatedButton(
            function: () {
              if (_formKey.currentState!.validate()) {
                print('Form is valid');
                controller.proceed();
              } else {
                print('Form is invalid');
              }
            },
            text: "Продолжить",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  TextFormField _buildSearchByNameNick(BuildContext context) {
    return TextFormField(
      controller: controller.searchByNameNick.value,
      onChanged: (value) {
        controller.onItemChanged(value);
        print(value);
      },
      onTap: () {
        Source.sourceBottomSheetCreate(context,
            users: controller.newUsers,
            controller: controller,
            textEditingController: controller.searchByNameNick.value,
            onChanged: (val) {
              controller.onItemChanged(val);
            }, select: (user) {
              controller.selectAddUsersFunc(user);
            });
      },
      decoration: InputDecoration(
        hintText: "Введите имя или ник",
        hintStyle:
        Get.textTheme.bodyText2!.copyWith(color: MyColors.grayTextColor),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Поиска игрока"),
      centerTitle: true,
    );
  }
}
