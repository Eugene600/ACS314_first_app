import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customtext.dart';

class NavigationBar extends StatelessWidget {
  final String? label;
  final IconData? icon;
  const NavigationBar({
    super.key,
    this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CustomText(
        label: label ?? "",
      ),
      Visibility(
        visible: icon != null,
        child: Icon(icon),
      ),
    ]);
  }
}
