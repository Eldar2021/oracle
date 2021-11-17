import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/notification_model/notification_model.dart';
import 'package:oracle/constants/color_constants.dart';

class NotificationListBuilder extends StatelessWidget {
  const NotificationListBuilder({
    Key? key,
    required this.notList,
  }) : super(key: key);

  final List<dynamic> notList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notList.length,
      itemBuilder: (context, index) {
        NotificationModel not = notList[index];
        return Column(
          children: [
            SizedBox(height: 10.0),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    color: MyColors.whiteColor,
                    width: 1.0,
                  ),
                ),
                child: SvgPicture.asset(
                  not.icon,
                  color: MyColors.whiteColor,
                  width: 20.0,
                ),
              ),
              title: Text(not.title, style: Get.textTheme.subtitle1),
              subtitle: Text(not.description, style: Get.textTheme.caption),
            ),
          ],
        );
      },
    );
  }
}
