import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/create_battle/controllers/battle_format_controller.dart';
import 'package:oracle/app/modules/create_battle/views/add_gamer_view.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/widgets/custom_widgets/link_text_widget.dart';
import 'package:oracle/widgets/custom_widgets/text_field_container.dart';
import 'package:oracle/widgets/custom_widgets/two_to_two_view.dart';
import 'package:oracle/widgets/custom_widgets/user_container.dart';
import 'package:select_form_field/select_form_field.dart';

class BattleFormatView extends GetView<BattleFormatController> {
  BattleFormatView({Key? key}) : super(key: key);
  TextEditingController formatBattle = TextEditingController();

  @override
  final List<Map<String, dynamic>> _items = [
    {
      'value': '1x1',
      'label': '1x1',
    },
    {
      'value': '2x2',
      'label': '2x2',
    },
    {
      'value': '3x3',
      'label': '3x3',
    },
    {
      'value': '4x4',
      'label': '4x4',
    },
    {
      'value': '5x5',
      'label': '5x5',
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Создание сражения"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: double.infinity),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SelectFormField(
                  controller: formatBattle,
                  hintText: "Формат игры",
                  type: SelectFormFieldType.dropdown,
                  items: _items,
                  onChanged: (val) {
                    controller.changeFormat(val);
                  },
                  onSaved: (val) => print(val),
                ),
                const SizedBox(height: 25),
                Obx(
                  () => Visibility(
                    child: SquadName(),
                    visible: controller.squadName.value,
                  ),
                ),
                const SizedBox(height: 25),
                Text("игрok", style: Get.textTheme.bodyText1),
                const SizedBox(height: 10),
                UserContainer(
                  userName: "${userModel1.name}  *  ${userModel1.nickName}",
                ),
                Obx(
                  () => ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: controller.counList.value,
                    itemBuilder: (contaxt, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: TwoToTwoView(),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: LinkText(
                    text1: "Ваш логин должен быть идентичен \nс логином в ",
                    text2: "Iccup.com",
                    styletex1: Get.textTheme.caption!,
                    styletex2: Get.textTheme.caption!
                        .copyWith(color: MyColors.categoryTextColor),
                    function: () {},
                  ),
                ),
                const SizedBox(height: 277),
                Center(
                  child: CustomElevatedButton(
                    function: () {
                      Get.toNamed(Routes.ADD_GAMER);
                    },
                    text: "Далее",
                    width: 85,
                    height: 42,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
