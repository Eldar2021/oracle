import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oracle/service/get_dialog_service.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/app/modules/give_review/widgets/get_review_widget.dart';

import '../controllers/give_review_controller.dart';

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
                        DialogService.customDialog(
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
