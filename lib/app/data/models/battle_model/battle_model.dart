import 'package:intl/intl.dart';

class Battle {
  String title;
  String status;
  String startDate;
  String? rate;
  int? getViewsCount;
  int? getRepostsCount;
  String getGameIcon;

  Battle({
    required this.title,
    required this.status,
    required this.startDate,
    this.rate,
    this.getViewsCount,
    this.getRepostsCount,
    required this.getGameIcon,
  });

  factory Battle.fromJson(Map<String, dynamic> json) => Battle(
    title: json['title'],
    status: json['status'],
    startDate: DateFormat("H:m,  dd.MM.yy").format(DateTime.parse(json["start_date"])),
    rate: json['rate']?? "",
    getViewsCount: json['get_views_count']?? 0,
    getRepostsCount: json['get_reposts_count']?? 0,
    getGameIcon: json['get_game_icon'],
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['status'] = this.status;
    data['start_date'] = this.startDate;
    data['rate'] = this.rate;
    data['get_views_count'] = this.getViewsCount;
    data['get_reposts_count'] = this.getRepostsCount;
    data['get_game_icon'] = this.getGameIcon;
    return data;
  }
}
