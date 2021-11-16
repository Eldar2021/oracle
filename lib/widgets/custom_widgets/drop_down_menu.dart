import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/constants/color_constants.dart';

class DropDownMenu extends StatelessWidget {
  const DropDownMenu(
      {Key? key,
      required this.items,
      // required this.onTap,
      required this.value,
      required this.onChanged})
      : super(key: key);
  final List<DropdownMenuItem<dynamic>> items;
  // final Function onTap;
  final Function onChanged;
  final String value;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: items,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        filled: true,
        fillColor: MyColors.buttonBgColor,
      ),
    );
  }
}
