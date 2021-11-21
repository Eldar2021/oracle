import 'package:oracle/app/data/models/battle_task_model/battle_task_model.dart';
import 'package:oracle/app/data/models/offers_model/offers_model.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/generated/assets.dart';

class Battle {
  final String title;
  final String status;
  final String startDate;
  final String? rate;
  final int? getViewsCount;
  final int? getRepostsCount;
  final String getGameIcon;
  final String? category;
  final String? description;
  final String? createTime;
  final String? formatBattle;
  final String? statusBattle;
  final String? winner;
  final String? winRate;
  final String? defeated;
  final String? defeatedRate;
  final List<BattleTaskModel>? tasks;
  final UserModel customer;
  final List<OffersModel>? offers;

  Battle({
    required this.title,
    required this.status,
    required this.startDate,
    required this.customer,
    this.rate,
    this.offers,
    this.getViewsCount = 0,
    this.getRepostsCount = 0,
    required this.getGameIcon,
    this.category,
    this.description,
    this.createTime,
    this.formatBattle,
    this.statusBattle,
    this.winner,
    this.winRate,
    this.defeated,
    this.defeatedRate,
    this.tasks,
  });

}

List<Battle> listBattle1 = [battle1, battle2, battle3];

Battle battle1 = Battle(
  title: "Dota 2, Играем на SF, мид до 2 смертей или до падения т1",
  formatBattle: "1х1",
  statusBattle: "Завершен",
  status: "Dota 2",
  rate: "1000 com",
  startDate: "20:00, 05.06.21",
  createTime: "Создано сегодня, 13:10",
  getGameIcon: Assets.gameImagesDota2,
  tasks: battleTaskList1,
  customer: userModel1,
  offers: offers,
  category: "Dota 2",
  winner: "Азим appass1nato Д.",
  winRate: "2",
  defeated: "Кайрат TROn К.",
  defeatedRate: "1",
  description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",


);
Battle battle2 = Battle(
  title: "Dota 2, Играем на SF, мид до 2 смертей или до падения т1",
  statusBattle: "В ожидании",
  formatBattle: "2х2",
  status: "Dota 2",
  rate: "1000 com",
  startDate: "20:00, 05.06.21",
  createTime: "Создано сегодня, 13:10",
  getGameIcon: Assets.gameImagesDota2,
  category: "Dota 2",
  customer: userModel1,
  winner: "Азим appass1nato Д.",
  winRate: "2",
  defeated: "Кайрат TROn К.",
  defeatedRate: "1",
  offers: offers,
  description:
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",


);
Battle battle3 = Battle(
  title: "Dota 2, Играем на SF, мид до 2 смертей или до падения т1",
  formatBattle: "3х3",
  statusBattle: "Отменен",
  status: "Dota 2",
  tasks: battleTaskList1,
  customer: userModel1,
  winner: "Азим appass1nato Д.",
  winRate: "2",
  defeated: "Кайрат TROn К.",
  defeatedRate: "1",
  offers: offers,
  rate: "1000 com",
  startDate: "20:00, 05.06.21",
  createTime: "Создано сегодня, 13:10",
  getGameIcon: Assets.gameImagesDota2,
  category: "Dota 2",
  description:
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",


);
