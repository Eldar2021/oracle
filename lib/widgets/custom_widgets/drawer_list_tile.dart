import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  DrawerListTile({
    required this.leading,
    required this.title,
    required this.style,
    required this.onTap,
  });

  final Widget? leading;
  final String title;
  final TextStyle style;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title, style: style),
      onTap: () {
        onTap();
      }
    );
  }
}
