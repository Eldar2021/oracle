import 'package:flutter/material.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/widgets/custom_widgets/battle_list_view.dart';
import 'package:oracle/widgets/custom_widgets/is_empty_widget.dart';

class ICustomer extends StatelessWidget {
  const ICustomer({
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

  Container _listBattleIsNotEmpty(){
    return Container(
      child: BattlesListBuilder(
        battleList: listBattle!,
        shrinkWrap: true,
        primary: false,
      ),
    );
  }
}
