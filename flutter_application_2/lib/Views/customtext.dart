import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  const CustomText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      "username",
      style: TextStyle(
          color: Colors.deepPurple, fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}
