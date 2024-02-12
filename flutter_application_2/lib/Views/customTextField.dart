import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final IconData? icon;
  final IconData? prefIcon;
  final bool isPassword;
  const CustomTextField(
      {super.key,
      this.hint,
      this.icon,
      this.prefIcon,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hint,
          prefixIcon: Icon(icon),
          suffixIcon: Icon(prefIcon)),
    );
  }
}
