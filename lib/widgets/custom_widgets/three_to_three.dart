import 'package:flutter/material.dart';
import 'package:oracle/widgets/custom_widgets/two_to_two_view.dart';

class ThreeToThree extends StatelessWidget {
  const ThreeToThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TwoToTwoView(),
        const SizedBox(height: 20),
        TwoToTwoView(),
      ],
    );
  }
}
