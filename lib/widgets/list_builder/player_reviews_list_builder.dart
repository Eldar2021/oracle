import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/profile/controllers/player_profile_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import '../custom_widgets/custom_elevared_button.dart';

class PlayerReviewsList extends StatelessWidget {
  const PlayerReviewsList({
    required this.reviews,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final List<Review> reviews;
  final PlayerProfileController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() {
            return _buildRow();
          }),
          const SizedBox(height: 20),
          reviews.isEmpty
              ? Container()
              : Obx(() {
                  return _buildListView();
                }),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(
                text: "Оставить отзыв",
                width: 155,
                function: () {
                  controller.giveReviews();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("${reviews.isEmpty ? "Пока нету отзывов" : "Отзывы"}"),
        controller.changeReview.value == false
            ? InkWell(
                onTap: () {
                  controller.changeReviewsPlus(reviews.length);
                },
                child: Text(
                  "${reviews.isEmpty ? "" : "Смотртеть все отзывы"}",
                  style: Get.textTheme.bodyText1!
                      .copyWith(color: MyColors.grayTextColor),
                ),
              )
            : InkWell(
                onTap: () {
                  controller.changeReviewsMinus(reviews.length > 2 ? 2 : 1);
                },
                child: Text(
                  "${reviews.isEmpty ? "" : "Смотртеть 2 отзывы"}",
                  style: Get.textTheme.bodyText1!
                      .copyWith(color: MyColors.grayTextColor),
                ),
              ),
      ],
    );
  }

  ListView _buildListView() {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: controller.changeReview.value == true
          ? controller.reviews.value
          : controller.changeReview.value == false && reviews.length > 2
              ? 2
              : reviews.length,
      itemBuilder: (context, index) {
        Review review = reviews[index];
        return ListTile(
          leading: Image.asset(
            review.user.photoProfile,
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),
          title: Text(
            "“${review.comment}”",
            style: Get.textTheme.bodyText2!
                .copyWith(color: MyColors.grayWhiteColor),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                review.user.name,
                style: Get.textTheme.caption!
                    .copyWith(color: MyColors.blackGrayColor, height: 2.5),
              ),
              Text(
                review.time,
                style: Get.textTheme.caption!
                    .copyWith(color: MyColors.blackGrayColor, height: 2.5),
              )
            ],
          ),
        );
      },
    );
  }
}
