import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import '../widgets/get_review_widget.dart';
import '../controllers/give_review_controller.dart';

class GiveReviewView extends GetView<GiveReviewController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: double.infinity,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: _buildBody(),
            ),
          ),
        ),
      ),
    );
  }

  Column _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GetReviewWidget(
          controller: controller,
        ),
        const SizedBox(height: 50.0),
        Text("Оставьте отзыв"),
        const SizedBox(height: 15.0),
        TextFormField(
          controller: controller.review.value,
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
                controller.give();
              },
              text: "Отправить",
            ),
          ],
        )
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('Отзыв'),
      centerTitle: true,
    );
  }
}
