import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../widgets/bg_notification.dart';
import 'package:oracle/widgets/list_builder/notification_list.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Уведомления'),
        centerTitle: true,
      ),
      body: controller.notListController.isEmpty
          ? BgNotification()
          : NotificationListBuilder(notList: controller.notListController),
    );
  }
}
