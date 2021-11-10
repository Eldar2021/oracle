import 'package:oracle/generated/assets.dart';

class BattleTaskModel {
  final String profileIcon;
  final String description;
  final String rate;

  BattleTaskModel({
    required this.profileIcon,
    required this.description,
    required this.rate,
  });
}

BattleTaskModel battleTaskModel1 = BattleTaskModel(
  profileIcon: Assets.userDota,
  description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem",
  rate: "2500 с",
);

List<BattleTaskModel> battleTaskList1 = [
  battleTaskModel1,
  battleTaskModel1,
  battleTaskModel1,
  battleTaskModel1,
  battleTaskModel1,
  battleTaskModel1,
  battleTaskModel1,
];
