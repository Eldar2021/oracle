import 'package:flutter/material.dart';

class TextFormFieldWithTextIdentification extends StatelessWidget {
  const TextFormFieldWithTextIdentification({
    required this.text,
    required this.hinText,
    required this.textEditingController,
    this.validator,
    Key? key,
  }) : super(key: key);

  final String text;
  final String hinText;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(height: 10.0),
        TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: hinText,
          ),
          validator: validator?? null,
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
