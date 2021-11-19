import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class AuthenticateButton extends StatelessWidget {
  const AuthenticateButton({
    this.icon = "icon",
    this.text = "Войти",
    required this.onTab,
    Key? key,
  }) : super(key: key);
  final String text;
  final String icon;
  final Function onTab;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTab();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 7.0, bottom: 8.0),
        padding: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: MyColors.buttonBgColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(flex: 1, child: SvgPicture.asset("$icon")),
            Expanded(
              flex: 5,
              child: Text(
                text,
                style: Get.textTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
