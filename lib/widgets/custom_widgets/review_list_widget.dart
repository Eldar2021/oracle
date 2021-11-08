import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';

import 'custom_elevared_button.dart';

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
          Text("${reviews.isEmpty ? "Пока нету отзывов" : "Отзывы"}"),
          const SizedBox(height: 20),
          reviews.isEmpty
              ? Container()
              : ListView.builder(
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
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              reviews.isEmpty
                  ? CustomElevatedButton(
                      text: "Оставить отзыв",
                      width: 155,
                      function: () {
                        Get.toNamed(Routes.GIVE_REVIEW);
                      },
                    )
                  : CustomElevatedButton(
                      text: "Смотртеть все отзывы",
                      width: 206,
                      function: () {},
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
