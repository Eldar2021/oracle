import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/widgets/custom_widgets/like_dislike_widget.dart';

class BattleCustomer extends StatelessWidget {
  const BattleCustomer({
    required this.user,
    Key? key,
  }) : super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              onTap: () {
                Get.toNamed(Routes.PLAYER_PROFILE, arguments: [user]);
              },
              child: Image.asset(
                user.photoProfile,
                width: 45,
                height: 45,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.PLAYER_PROFILE, arguments: [user]);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("${user.name}", style: Get.textTheme.subtitle2!),
                    Text("  •  ${userModel1.nickName}",
                        style: Get.textTheme.subtitle2!),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              LikeDislike(
                how: "bosh",
                user: user,
                mainAxisAlignment: MainAxisAlignment.start,
              )
            ],
          ),
        )
      ],
    );
  }
}
