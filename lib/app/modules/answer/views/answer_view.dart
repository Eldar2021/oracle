import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/expandable_text.dart';
import '../controllers/answer_controller.dart';

class AnswerView extends GetView<AnswerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }

  Column _buildBody() {
    return Column(
      children: [
        MyExpandableText(
          questions:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididun?",
          answer:
              "Lut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu ",
        ),
        const SizedBox(height: 30.0),
        MyExpandableText(
          questions: "Fugiat nulla pariatur?",
          answer:
              "Lut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu ",
        ),
        const SizedBox(height: 30.0),
        MyExpandableText(
          questions: "Excepteur sint occaecat cupidatat non proident?",
          answer:
              "Lut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu ",
        ),
        const SizedBox(height: 30.0),
        MyExpandableText(
          questions:
              "Sunt in culpa qui officia deserunt mollit anim id est laborum?",
          answer:
              "Lut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu ",
        ),
        const SizedBox(height: 30.0),
        MyExpandableText(
          questions: "Sed ut perspiciatis unde omnis iste natus error sit?",
          answer:
              "Lut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu ",
        ),
        const SizedBox(height: 30.0),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('AnswerView'),
      centerTitle: true,
    );
  }
}
