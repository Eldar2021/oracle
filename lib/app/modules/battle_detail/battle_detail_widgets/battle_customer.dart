import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
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
            child: Image.asset(user.photoProfile),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child:
                        Text("${user.name}", style: Get.textTheme.subtitle2!),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text("   •   ${userModel1.nickName}",
                        style: Get.textTheme.subtitle2!),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              LikeDislike(
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
