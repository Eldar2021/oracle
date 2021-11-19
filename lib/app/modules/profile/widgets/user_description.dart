
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/constants/color_constants.dart';

class UserDescription extends StatelessWidget {
  const UserDescription({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("О себе"),
          const SizedBox(height: 10),
          Text(
            "${user.description}",
            style:
            Get.textTheme.caption!.copyWith(color: MyColors.grayWhiteColor),
          ),
        ],
      ),
    );
  }
}
