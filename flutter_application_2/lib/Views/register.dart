import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:flutter_application_2/Views/customTextField.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:flutter_application_2/configs/constants.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
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
                      Image.network(
                        "https://netstorage-tuko.akamaized.net/images/0fgjhs6ffkq54dn1o.jpg?imwidth=1200",
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
                label: "First Name",
              ),
              CustomTextField(
                hint: "First Name",
                icon: Icons.person,
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
              ),
              SizedBox(
                height: 40,
              ),
              CustomText(
                label: "Email Address",
              ),
              CustomTextField(
                hint: "email address",
                icon: Icons.person,
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
                      Get.offAndToNamed("/Home");
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
}
