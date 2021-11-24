import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PreviewFormatTime extends StatelessWidget {
  const PreviewFormatTime({
    Key? key,
    required this.text,
    this.value,
    this.valueColor,
  }) : super(key: key);

  final String text;
  final String? value;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: Get.textTheme.bodyText2),
        const SizedBox(width: 10),
        Text(
          value ?? "",
          style: Get.textTheme.bodyText2!.copyWith(
            color: valueColor ?? null,
          ),
        ),
      ],
    );
  }
}
