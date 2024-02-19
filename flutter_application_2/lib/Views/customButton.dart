import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customtext.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  const CustomButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: Size(200, 50),
          backgroundColor: Colors.blueAccent,
        ),
        child: CustomText(
          label: "Login",
          labelColor: Colors.orangeAccent,
        ));
  }
}
