import 'package:flutter/material.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battke_format_battle.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_description.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_rate.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_start_time.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_status.dart';
import 'package:oracle/app/modules/battle_detail/battle_detail_widgets/battle_winner_row.dart';
import 'custom_divider.dart';

class BattleDescriptionRate extends StatelessWidget {
  const BattleDescriptionRate({
    Key? key,
    required this.battle,
    this.status,
    this.isStatus = false,
  }) : super(key: key);

  final Battle battle;
  final String? status;
  final bool? isStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BattleDescriptions(battle: battle),
        const SizedBox(height: 30.0),
        BattleStartTime(battle: battle),
        const SizedBox(height: 10.0),
        BattleRate(battle: battle),
        const SizedBox(height: 15.0),
        isStatus == false
            ? BattleFormatBattle(battle: battle)
            : BattleStatus(battle: battle),
        const SizedBox(height: 15.0),
        battle.statusBattle != null && battle.statusBattle == "Завершен"
            ? BattleWinnerRow(battle: battle)
            : Container(),
        const SizedBox(height: 20.0),
        CustomDivider(),
      ],
    );
  }
}
