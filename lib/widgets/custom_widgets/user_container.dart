import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/link_text_widget.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({Key? key, required this.userName}) : super(key: key);
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: MyColors.buttonBgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                "https://picsum.photos/200/300",
                width: 42,
                height: 42,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 15),
            Text(userName, style: Get.textTheme.caption),
            const SizedBox(width: 93),
            SvgPicture.asset(Assets.componentsUser),
          ],
        ),
      ),
    );
  }
}
