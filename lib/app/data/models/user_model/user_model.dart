import 'package:oracle/generated/assets.dart';

class UserModel {
  final String name;
  final String? nickName;
  final String photoProfile;
  final int? battles;
  final int? wins;
  final int? defeats;
  final double? winRate;
  final int? like;
  final int? dislike;
  final String phone;
  final String whatsApp;
  final String telegram;
  final String description;
  final double? ratingPoliteness;
  final double? ratingPunctuality;
  final double? ratingAdequacy;
  final List<Review>? reviews;
  final String? email;
  final String? profile;
  final List<Play>? plays;

  UserModel({
    required this.name,
    this.nickName,
    required this.photoProfile,
    this.battles,
    this.wins,
    this.defeats,
    this.winRate,
    this.like,
    this.dislike,
    required this.phone,
    required this.whatsApp,
    required this.telegram,
    required this.description,
    this.ratingPoliteness,
    this.ratingPunctuality,
    this.ratingAdequacy,
    this.reviews,
    this.email,
    this.profile,
    this.plays,
  });
}

class Play {
  final String name;
  final String photoProfile;
  final int? battles;
  final int? wins;
  final int? defeats;
  final double? winRate;

  Play({
    required this.name,
    required this.photoProfile,
    this.battles = 0,
    this.wins = 0,
    this.defeats = 0,
    this.winRate,
  });
}

class Review {
  final UserModel user;
  final String comment;
  final String time;

  Review({
    required this.user,
    required this.comment,
    required this.time,
  });
}

UserModel userModel1 = UserModel(
  name: "Азим Д.",
  photoProfile: Assets.userPhote,
  phone: "+996990039301",
  whatsApp: "+996990039301",
  telegram: "ak_bulak",
  description:
      """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum""",
  nickName: "appass1nato",
  battles: 47,
  wins: 28,
  defeats: 19,
  winRate: (47 / 47 + 28) * 100,
  like: 19,
  dislike: 1,
  ratingPoliteness: 4.5,
  ratingAdequacy: 4.0,
  ratingPunctuality: 5.0,
  email: "eldiiaralmazbekov@gmail.com",
  profile: "eldiiar",
  // reviews: reviews1,
  //plays: plays1,
);
List<Play> plays1 = [play1, play2, play3, play4];
List<Play> plays2 = [];
List<Review> reviews1 = [review1, review2];
List<Review> reviews2 = [];
Review review1 = Review(
  user: userModel1,
  comment: "Пацан красавчик, хорошо играет, жду новых игр с тобой",
  time: "15:15, 08.06.21г",
);
Review review2 = Review(
  user: userModel1,
  comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
  time: "15:15, 08.06.21г",
);

Play play1 = Play(
  name: "Dota 2",
  photoProfile: Assets.userDota,
  wins: 1,
  battles: 6,
  defeats: 4,
  winRate: (1/6)*100,
);
Play play2 = Play(
  name: "Dota 2",
  photoProfile: Assets.userDota,
  wins: 5,
  battles: 10,
  defeats: 5,
  winRate: (5/10)*100,
);
Play play3 = Play(
  name: "Dota 2",
  photoProfile: Assets.userDota,
  wins: 9,
  battles: 21,
  defeats: 12,
  winRate: (9/21)*100,
);
Play play4 = Play(
  name: "Dota 2",
  photoProfile: Assets.userDota,
  wins: 9,
  battles: 10,
  defeats: 1,
  winRate: (9/10)*100,
);
