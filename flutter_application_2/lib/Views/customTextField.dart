import 'package:flutter/material.dart';
import 'package:flutter_application_2/Controller/login_controller.dart';
import 'package:get/get.dart';

LoginController loginController = Get.put(LoginController());

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final IconData? icon;
  final IconData? prefIcon;
  final bool isPassword;
  final Function()? onTap;
  final InputDecoration? decoration;

  const CustomTextField({
    Key? key,
    this.hint,
    this.icon,
    this.prefIcon,
    this.isPassword = false,
    this.controller,
    this.onTap,
    this.decoration,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isHidden = loginController.isHidden.value;
      return TextField(
        onTap: onTap,
        controller: controller,
        obscureText: isPassword && isHidden,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hint,
          prefixIcon: Icon(icon),
          suffixIcon: isPassword
              ? GestureDetector(
                  child:
                      Icon(isHidden ? Icons.visibility_off : Icons.visibility),
                  onTap: () => loginController.toggleHide(),
                )
              : null,
        ),
      );
    });
  }
}
