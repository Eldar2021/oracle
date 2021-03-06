import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/give_review_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';

class GetReviewWidget extends StatelessWidget {
  const GetReviewWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final GiveReviewController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 35),
        Text("Оцените"),
        const SizedBox(height: 15),
        _buildGiveReview(
          text: "Вежливость",
          function: (rating) {
            controller.val1.value = rating;
          },
        ),
        _buildGiveReview(
          text: "Пунктуальность",
          function: (rating) {
            controller.val2.value = rating;
          },
        ),
        _buildGiveReview(
          text: "Адекватность",
          function: (rating) {
            controller.val3.value = rating;
          },
        ),
      ],
    );
  }

  Row _buildGiveReview({required String text, required Function function}) {
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
          child: RatingBar.builder(
            initialRating: 0,
            direction: Axis.horizontal,
            itemSize: 14.0,
            allowHalfRating: true,
            itemCount: 5,
            itemBuilder: (context, _) => SvgPicture.asset(
              Assets.componentsRatingEmpty,
              width: 20,
              color: MyColors.ratingStarColor,
            ),
            itemPadding: EdgeInsets.all(7.0),
            onRatingUpdate: (rating) {
              function(rating);
            },
          ),
        ),
      ],
    );
  }
}
