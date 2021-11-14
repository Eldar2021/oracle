import 'package:flutter/material.dart';

class SettingTextField extends StatelessWidget {
  const SettingTextField({
    Key? key,
    required this.textEditingController,
    this.text,
    this.hintText,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String? text;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text ?? ""),
          SizedBox(height: 10.0),
          TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: hintText ?? "",
            ),
          ),
          SizedBox(height: 25.0),
        ],
      ),
    );
  }
}
