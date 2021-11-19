import 'package:oracle/app/data/models/user_model/user_model.dart';

class OffersModel {
  final UserModel user;
  final String description;
  final String time;
  final double money;

  OffersModel({
    required this.user,
    required this.money,
    required this.description,
    required this.time,

  });
}

List<OffersModel> offers = [offer1, offer2];

OffersModel offer1 = OffersModel(
  user: userModel1,
  money: 1000,
  time: "05 июля 2021, 17:56",
  description:
      """ Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum

Sed ut perspiciatis unde omnis iste natus error sit 
voluptatem accusantium doloremque laudantium
totam rem aperiam

Уaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo https://vk.com/user """,
);

OffersModel offer2 = OffersModel(
  user: userModel1,
  money: 3000,
  time: "05 июля 2021, 17:56",
  description:
  """ Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum

Sed ut perspiciatis unde omnis iste natus error sit 
voluptatem accusantium doloremque laudantium
totam rem aperiam

Уaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo https://vk.com/user """,
);
