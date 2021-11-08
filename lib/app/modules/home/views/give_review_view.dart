import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/home/controllers/give_review_controller.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';

class GiveReviewView extends GetView<GiveReviewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Отзыв'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GetReviewWidget(),
                const SizedBox(height: 50.0),
                Text("Оставьте отзыв"),
                const SizedBox(height: 15.0),
                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Комментарий...",
                  ),
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      function: () {
                        customDialog(
                          buttonText: "Вернуться назад",
                          function: () {},
                          description:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                        );
                      },
                      text: "Отправить",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GetReviewWidget extends StatelessWidget {
  const GetReviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 35),
        Text("Оцените"),
        const SizedBox(height: 15),
        _buildGiveReview(text: "Вежливость"),
        _buildGiveReview(text: "Пунктуальность"),
        _buildGiveReview(text: "Адекватность"),
      ],
    );
  }

  Row _buildGiveReview({required String text}) {
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
              print(rating);
            },
          ),
        ),
      ],
    );
  }
}

void customDialog({
  String? icon,
  String? text,
  String? description,
  String? buttonText,
  required Function function,
}) {
  Get.defaultDialog(
    title: text ?? "",
    backgroundColor: MyColors.backgroundColor,
    content: Column(
      children: [
        SvgPicture.asset(Assets.componentsConfirm),
        const SizedBox(height: 30.0),
        Text(
          "${description ?? ""}",
          textAlign: TextAlign.center,
          style: Get.textTheme.subtitle1,
        ),
        const SizedBox(height: 30.0),
      ],
    ),
    confirm: Column(
      children: [
        CustomElevatedButton(
          function: () {
            function();
          },
          text: buttonText ?? "Войти",
        ),
        const SizedBox(height: 30.0),
      ],
    ),
  );
}
