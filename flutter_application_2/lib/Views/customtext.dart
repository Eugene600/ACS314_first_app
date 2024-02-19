import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final double fontSize;
  final Color labelColor;
  const CustomText(
      {super.key,
      required this.label,
      this.fontSize = 30,
      this.labelColor = Colors.blueAccent});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          color: labelColor, fontSize: fontSize, fontWeight: FontWeight.w600),
    );
  }
}
