import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customtext.dart';

class CustomButton extends StatelessWidget {
  final String label;
  const CustomButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: CustomText(
          label: "Login",
        ));
  }
}
