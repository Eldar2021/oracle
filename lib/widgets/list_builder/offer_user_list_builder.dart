import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/offers_model/offers_model.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/like_dislike_widget.dart';

class OfferUserList extends StatelessWidget {
  const OfferUserList({
    Key? key,
    required this.offer,
  }) : super(key: key);

  final OffersModel offer;

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
            child: Image.asset(offer.user.photoProfile),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${offer.user.name}", style: Get.textTheme.subtitle2!),
                  Text("   •   ${userModel1.nickName}",
                      style: Get.textTheme.subtitle2!),
                ],
              ),
              const SizedBox(height: 10.0),
              LikeDislike(
                how: "bosh",
                user: offer.user,
                mainAxisAlignment: MainAxisAlignment.start,
              )
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Сражений"),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  SvgPicture.asset(Assets.drawerNavBattle, width: 10.0),
                  const SizedBox(width: 10.0),
                  Text("${offer.user.battles}")
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
