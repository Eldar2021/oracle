import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/app/modules/battle/widgets/is_empty_widget.dart';
import 'package:oracle/widgets/list_builder/battle_list_status_builder.dart';

class IPerformer extends StatelessWidget {
  const IPerformer({
    this.listBattle,
    Key? key,
  }) : super(key: key);
  final List<Battle>? listBattle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: listBattle == null ? IsEmptyWidget() : _listBattleIsNotEmpty(),
        ),
      ),
    );
  }

  Container _listBattleIsNotEmpty() {
    return Container(
      child: BattlesStatusListBuilder(
        battleList: listBattle!,
        shrinkWrap: true,
        primary: false,
        function: (battle){
          Get.toNamed(Routes.BATTLE_DETAIL_STATUS, arguments: [battle]);
        },
      ),
    );
  }
}
