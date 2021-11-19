import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class CardsContainer extends StatelessWidget {
  const CardsContainer(
      {Key? key,
      required this.cardName,
      required this.image,
      required this.secImage,
      required this.onTap})
      : super(key: key);
  final String cardName;
  final String image;
  final String secImage;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(cardName, image);
      },
      child: Container(
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
              Image.asset(image),
              const SizedBox(width: 20),
              Text(cardName, style: Get.textTheme.bodyText2),
              const SizedBox(width: 93),
              SvgPicture.asset(secImage),
            ],
          ),
        ),
      ),
    );
  }
}
