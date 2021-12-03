import 'package:flutter/material.dart';

class SettingTextField extends StatelessWidget {
  const SettingTextField({
    Key? key,
    required this.textEditingController,
    this.text,
    this.hintText,
    this.validator,
    this.type,
    this.autovalidateMode,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String? text;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextInputType? type;
  final AutovalidateMode? autovalidateMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text ?? ""),
          SizedBox(height: 10.0),
          TextFormField(
            autovalidateMode: autovalidateMode?? null,
            keyboardType: type ?? null,
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: hintText ?? "",
            ),
            validator: validator ?? null,
          ),
          SizedBox(height: 25.0),
        ],
      ),
    );
  }
}
