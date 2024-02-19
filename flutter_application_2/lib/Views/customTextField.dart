import 'package:flutter/material.dart';
import 'package:flutter_application_2/Controller/login_controller.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

LoginController loginController = Get.put(LoginController());

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final IconData? icon;
  final IconData? prefIcon;
  final bool isPassword;

  const CustomTextField(
      {super.key,
      this.hint,
      this.icon,
      this.prefIcon,
      this.isPassword = false,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextField(
          controller: controller,
          obscureText: loginController.isHidden.value,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: hint,
            prefixIcon: Icon(icon),
            suffixIcon: Obx(() => GestureDetector(
                  child: Icon(loginController.isHidden.value
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onTap: () => loginController.toggleHide(),
                )),
          ),
        ));
  }
}
