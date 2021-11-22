import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class CommandUserCard extends StatelessWidget {
  const CommandUserCard({
    Key? key,
    required this.user,
    this.isCapitan = false,
    this.backX,
  }) : super(key: key);

  final UserModel user;
  final bool isCapitan;
  final Function? backX;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: MyColors.backgroundColor,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: MyColors.grayTextColor,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            user.photoProfile,
            width: 42,
            height: 42,
            fit: BoxFit.fill,
          ),
          const SizedBox(width: 10),
          Text(
            "${user.name} ${user.nickName ?? ""}",
            style: Get.textTheme.subtitle1,
          ),
          Spacer(),
          isCapitan == true
              ? SvgPicture.asset(Assets.componentsAddUserCrown)
              : InkWell(
                  onTap: () {
                    if (backX != null) {
                      backX!(user);
                    } else {}
                  },
                  child: SvgPicture.asset(Assets.arrayBackx),
                ),
        ],
      ),
    );
  }
}
