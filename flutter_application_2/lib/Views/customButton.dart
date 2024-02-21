import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customtext.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  final IconData? icon;
  const CustomButton({super.key, this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          fixedSize: Size(250, 50), backgroundColor: Colors.lightBlueAccent),
      icon: Visibility(
        visible: icon != null,
        child: Icon(icon),
      ),
      label: CustomText(
        label: label ?? "",
        labelColor: Colors.black,
      ),
    );
  }
}
