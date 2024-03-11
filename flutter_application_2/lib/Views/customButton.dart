import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback? action;

  const CustomButton({
    super.key,
    required this.label,
    this.icon,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: action,
      style: ElevatedButton.styleFrom(
          fixedSize: Size(250, 50), backgroundColor: Colors.lightBlueAccent),
      // icon: Visibility(
      //   visible: icon != null,
      //   child: Icon(icon),
      // ),
      // label: CustomText(
      //   label: label ?? "",
      //   labelColor: Colors.black,
      // ),
      icon: Icon(icon),
      label: CustomText(
        label: label,
        labelColor: Colors.black,
      ),
    );
  }
}
