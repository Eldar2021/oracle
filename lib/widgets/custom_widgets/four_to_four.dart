import 'package:flutter/material.dart';
import 'package:oracle/widgets/custom_widgets/three_to_three.dart';
import 'package:oracle/widgets/custom_widgets/two_to_two_view.dart';

class FourToFour extends StatelessWidget {
  const FourToFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ThreeToThree(),
        const SizedBox(height: 20),
        TwoToTwoView(),
      ],
    );
  }
}
