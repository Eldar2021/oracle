import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class RatingsCompleted extends StatelessWidget {
  const RatingsCompleted({
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
          Text("Средняя оценка"),
          const SizedBox(height: 15),
          RatingShowWithText(
            text: "Вежливость",
            rating: user.ratingPoliteness ?? 0,
          ),
          RatingShowWithText(
            text: "Пунктуальность",
            rating: user.ratingPunctuality ?? 0,
          ),
          RatingShowWithText(
            text: "Адекватность",
            rating: user.ratingAdequacy ?? 0,
          ),
        ],
      ),
    );
  }
}
class RatingShowWithText extends StatelessWidget {
  const RatingShowWithText({
    Key? key,
    required this.rating,
    required this.text,
  }) : super(key: key);

  final double rating;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            text,
            style:
            Get.textTheme.caption!.copyWith(color: MyColors.grayWhiteColor),
          ),
        ),
        Expanded(
          flex: 5,
          child: RatingBar(
            initialRating: rating,
            direction: Axis.horizontal,
            itemSize: 14.0,
            allowHalfRating: true,
            itemCount: 5,
            ratingWidget: RatingWidget(
              full: SvgPicture.asset(Assets.componentsRatingFullStar),
              half: SvgPicture.asset(Assets.componentsRatingQualityStar),
              empty: SvgPicture.asset(Assets.componentsRatingEmpty),
            ),
            itemPadding: EdgeInsets.all(7.0),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ),
      ],
    );
  }
}