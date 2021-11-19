import 'package:flutter/material.dart';
import 'package:oracle/constants/color_constants.dart';

class DropDownMenu extends StatelessWidget {
  const DropDownMenu({
    Key? key,
    required this.items,
    required this.value,
    required this.onChanged,
  }) : super(key: key);
  final List<DropdownMenuItem<dynamic>> items;
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
