import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:flutter_application_2/Views/customTextField.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:flutter_application_2/configs/constants.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

TextEditingController userNameController = TextEditingController();
TextEditingController fNameController = TextEditingController();
TextEditingController mNameController = TextEditingController();
TextEditingController lNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQueryData mediaQueryData = MediaQuery.of(context);

    // double screenWidth = mediaQueryData.size.width;
    // double screenHeight = mediaQueryData.size.height;

    // double devicePixelRatio = mediaQueryData.devicePixelRatio;

    // Orientation orientation = mediaQueryData.orientation;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          // padding: EdgeInsets.fromLTRB(40, 80, 40, 20),
          padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
          child: Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Image.asset(
              //     "/home/eugene/Documents/ACS314 _Mobile_ Apps _Projects/flutter_application_2/flutter_application_2/assets/images/daystar-blue.png"),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      // Image.network(
                      //   "https://netstorage-tuko.akamaized.net/images/0fgjhs6ffkq54dn1o.jpg?imwidth=1200",
                      //   width: 300,
                      //   height: 300,
                      // ),
                      Image.asset(
                        "assets/images//daystar-blue.png",
                        width: 300,
                        height: 300,
                      ),
                      CustomText(
                        label: "Sign in",
                        fontSize: 50,
                        labelColor: primaryColor,
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              ),
              CustomText(
                label: "admission number",
              ),
              CustomTextField(
                hint: "admission number",
                icon: Icons.person,
                controller: userNameController,
              ),
              SizedBox(
                height: 40,
              ),
              CustomText(
                label: "First Name",
              ),
              CustomTextField(
                hint: "First Name",
                icon: Icons.person,
                controller: fNameController,
              ),
              SizedBox(
                height: 40,
              ),
              CustomText(
                label: "Middle Name",
              ),
              CustomTextField(
                hint: "Middle Name",
                icon: Icons.person,
                controller: mNameController,
              ),
              SizedBox(
                height: 40,
              ),
              CustomText(
                label: "Last Name",
              ),
              CustomTextField(
                hint: "Last Name",
                icon: Icons.person,
                controller: lNameController,
              ),
              SizedBox(
                height: 40,
              ),
              CustomText(
                label: "email Address",
              ),
              CustomTextField(
                hint: "email address",
                icon: Icons.person,
                controller: emailController,
              ),
              SizedBox(
                height: 40,
              ),
              CustomText(
                label: "password",
              ),
              CustomTextField(
                hint: "Enter Password",
                icon: Icons.lock,
                prefIcon: Icons.visibility,
                isPassword: true,
                controller: passwordController,
              ),
              SizedBox(
                height: 40,
              ),
              CustomText(
                label: "Confirm Password",
              ),
              CustomTextField(
                hint: "Confirm Password",
                icon: Icons.lock,
                prefIcon: Icons.visibility,
                isPassword: true,
                controller: passwordController,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // TextButton(),
                  CustomButton(
                    label: "Login",
                    icon: Icons.login,
                    action: () {
                      Get.offAndToNamed("/Login");
                    },
                  ),

                  Spacer(),

                  CustomButton(
                    label: "Register",
                    icon: Icons.app_registration_rounded,
                    action: () {
                      remoteSignUp();
                    },
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Future<void> remoteSignUp() async {
    http.Response response;
    var body = {
      'adm_no': userNameController.text.trim(),
      'first_name': fNameController.text.trim(),
      'middle_name': mNameController.text.trim(),
      'last_name': lNameController.text.trim(),
      'email': emailController.text.trim(),
      'password': passwordController.text.trim(),
    };
    response = await http.post(
      Uri.parse("https://eugenewachira.co.ke/studentAccount/signUp.php"),
      body: body,
    );
    if (response.statusCode == 200) {
      var serverResponse = json.decode(response.body);
      int signedUp = serverResponse['success'];
      if (signedUp == 1) {
        Get.offAndToNamed("/");
      }
      // else {
      //   print("Error");
      //   Get.offAndToNamed("/Registration");
      // }
    }
  }
}
