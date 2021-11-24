import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    required this.icon,
    required this.text,
    required this.function,
    Key? key,
  }) : super(key: key);

  final String icon;
  final String text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 30.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xff272F37),
        ),
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  icon,
                  width: 52,
                  height: 52,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 25.0),
                Text(text),
              ],
            ),
            SvgPicture.asset(
              Assets.arrayArrayRight,
              color: MyColors.grayTextColor,
            )
          ],
        ),
      ),
    );
  }
}
