import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LinkText extends StatelessWidget {
  const LinkText({
    this.text1 = "",
    this.text2 = "",
    this.text3 = "",
    this.text4 = "",
    required this.styletex1,
    required this.styletex2,
    required this.function,
    this.styletex3,
    this.styletex4,
    Key? key,
  }) : super(key: key);
  final String text1;
  final String text2;
  final String? text3;
  final String? text4;
  final TextStyle styletex1;
  final TextStyle styletex2;
  final TextStyle? styletex3;
  final TextStyle? styletex4;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(style: styletex1, text: text1),
          TextSpan(
            style: styletex2,
            text: text2,
            recognizer: TapGestureRecognizer()
              ..onTap = () async{
                function();
              },
          ),
          TextSpan(style: styletex3, text: text3),
          TextSpan(
            style: styletex4,
            text: text4?? "",
            recognizer: TapGestureRecognizer()
              ..onTap = () async{
                function();
              },
          ),
        ],
      ),
    );
  }
}
