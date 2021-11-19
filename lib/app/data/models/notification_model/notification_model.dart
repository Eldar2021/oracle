import 'package:oracle/generated/assets.dart';

class NotificationModel {
  final String icon;
  final String title;
  final String description;

  NotificationModel({
    required this.icon,
    required this.title,
    required this.description,
  });
}

List<NotificationModel> notList = [not1, not2, not1, not2, not1, not2, not1, not2, not3, not4];

NotificationModel not1 = NotificationModel(
  icon: Assets.componentsConfirm,
  title: "Комментарий",
  description: "Айбек Е.  оставил комментарий у вас в профиле",
);

NotificationModel not2 = NotificationModel(
  icon: Assets.drawerNavBattle,
  title: "Сражение создано",
  description: "Сражение создано",
);

NotificationModel not3 = NotificationModel(
  icon: Assets.drawerNavMoney,
  title: "Баланс пополнен",
  description: "Баланс пополнен на 1000 сом",
);

NotificationModel not4 = NotificationModel(
  icon: Assets.componentsCoin,
  title: "Сражение завершено (Проигрыш)",
  description: "Сражение между Вами и Айбек. Е завершилось",
);
