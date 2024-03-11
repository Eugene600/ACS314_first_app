import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:flutter_application_2/Views/customTextField.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:flutter_application_2/configs/constants.dart';
import 'package:flutter_application_2/utils/sharedPreferences.dart';
import 'package:get/get.dart';

MySharedPreferences myPres = MySharedPreferences();
TextEditingController userNameController = TextEditingController();

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQueryData mediaQueryData = MediaQuery.of(context);

    // double screenWidth = mediaQueryData.size.width;
    // double screenHeight = mediaQueryData.size.height;

    // double devicePixelRatio = mediaQueryData.devicePixelRatio;

    // Orientation orientation = mediaQueryData.orientation;

    myPres.getValue("username").then((value) {
      userNameController.text = value;
    });
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
                  // Image.network(
                  //     ""),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.network(
                        "https://netstorage-tuko.akamaized.net/images/0fgjhs6ffkq54dn1o.jpg?imwidth=1200",
                        width: 300,
                        // height: 300,
                      ),
                      // Image.asset(
                      //   "assets/images/daystar-blue.png",
                      //   width: 300,
                      // ),
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
                label: "username",
              ),
              CustomTextField(
                hint: "Enter School email address",
                icon: Icons.person,
                controller: userNameController,
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

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    label: "Forgot Password",
                    fontSize: 20,
                    labelColor: appGreyColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomText(
                    label: "Recover",
                    fontSize: 20,
                    labelColor: primaryColor,
                  ),
                ],
              ),
              SizedBox(
                width: 50,
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // TextButton(),
                  CustomButton(
                    label: "Register",
                    icon: Icons.app_registration_rounded,
                    action: () {
                      Get.offAndToNamed("/Registration");
                    },
                  ),

                  Spacer(),
                  SizedBox(
                    height: 5.0,
                  ),
                  CustomButton(
                    label: "Login",
                    icon: Icons.login,
                    action: loginin,
                  ),
                  // MaterialButton(
                  //   onPressed: ()=> Get.offAndToNamed("/Home"),
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(
                  //       color: appWhiteColor,
                  //     ),
                  //   ),
                  //   color: primaryColor,
                  //   height: 10,
                  //   // minWidth: double.maxFinite,
                  // ),
                ],
              ),

              SizedBox(
                height: 20,
              )
            ]),
          ),
        ),
      ),
    );
  }

  void loginin() {
    Get.offAndToNamed("/Home");
    myPres.writeValue("username", userNameController).then((value) => null);
    Get.offAndToNamed("/Home");
  }
}
