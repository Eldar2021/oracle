import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/generated/assets.dart';

class Play {
  final String name;
  final int? battle;
  final int? player;
  final double? coins;
  final String img;
  final List<Battle>? listBattle;

  Play({
    required this.name,
    this.battle = 0,
    this.player = 0,
    this.coins = 0,
    this.listBattle,
    required this.img,
  });
}

List<Play> plays = [play1, play2, play1, play2, play1, play2];

Play play1 = Play(
  name: "Dota 2",
  battle: 145,
  coins: 25000,
  player: 2789,
  img: Assets.gameImagesDota2,
  listBattle: listBattle1,
);

Play play2 = Play(
  name: "Counter-Strike: Global Offensive",
  battle: 145,
  coins: 25000,
  player: 2789,
  img: Assets.gameImagesDota2,
);
