
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/constants/color_constants.dart';

class ReviewsList extends StatelessWidget {
  const ReviewsList({
    required this.reviews,
    Key? key,
  }) : super(key: key);

  final List<Review> reviews;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Отзывы"),
          const SizedBox(height: 20),
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              Review review = reviews[index];
              return ListTile(
                leading: Image.asset(review.user.photoProfile),
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
                          .copyWith(color: MyColors.blackGrayColor),
                    ),
                    Text(
                      review.time,
                      style: Get.textTheme.caption!
                          .copyWith(color: MyColors.blackGrayColor),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}