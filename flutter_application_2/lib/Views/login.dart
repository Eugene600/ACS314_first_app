import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Controller/login_controller.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:flutter_application_2/Views/customTextField.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:flutter_application_2/configs/constants.dart';
import 'package:flutter_application_2/utils/sharedPreferences.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

MySharedPreferences myPres = MySharedPreferences();
TextEditingController userNameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
LoginController loginController = Get.put(LoginController());

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQueryData mediaQueryData = MediaQuery.of(context);

    // double screenWidth = mediaQueryData.size.width;
    // double screenHeight = mediaQueryData.size.height;

    // double devicePixelRatio = mediaQueryData.devicePixelRatio;

    // Orientation orientation = mediaQueryData.orientation;

    myPres.getValue("admission number").then((value) {
      userNameController.text = value;
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          // padding: EdgeInsets.fromLTRB(40, 80, 40, 20),
          padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Image.asset(
              //     "/home/eugene/Documents/ACS314 _Mobile_ Apps _Projects/flutter_application_2/flutter_application_2/assets/images/daystar-blue.png"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.network(
                  //     ""),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      // Image.network(
                      //   "https://netstorage-tuko.akamaized.net/images/0fgjhs6ffkq54dn1o.jpg?imwidth=1200",
                      //   width: 300,
                      //   // height: 300,
                      // ),
                      Image.asset(
                        "assets/images//daystar-blue.png",
                        width: 300,
                        height: 300,
                      ),
                      const CustomText(
                        label: "Sign in",
                        fontSize: 50,
                        labelColor: primaryColor,
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 30,
              ),
              const CustomText(
                label: "admission number",
              ),
              CustomTextField(
                hint: "Enter Admission Number",
                icon: Icons.person,
                controller: userNameController,
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomText(
                label: "password",
              ),
              CustomTextField(
                hint: "Enter Password",
                icon: Icons.lock,
                prefIcon: Icons.visibility,
                isPassword: true,
                controller: passwordController,
              ),

              const Row(
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
              const SizedBox(
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

                  const Spacer(),
                  const SizedBox(
                    height: 5.0,
                  ),
                  CustomButton(
                    label: "Login",
                    icon: Icons.login,
                    action: () {
                      if (userNameController.text.isEmpty ||
                          passwordController.text.isEmpty) {
                        // Show error message if any field is empty
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                "Error!!!",
                                style: TextStyle(
                                  color: Colors
                                      .red, // Set the color of the title to red
                                ),
                              ),
                              content: const Text(
                                "Please fill in both ADMISSION NUMBER and PASSWORD.",
                                style: TextStyle(
                                  color: Colors
                                      .blueAccent, // Set the color of the content to blue
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed("/Login");
                                  },
                                  child: const Text(
                                    "OK",
                                    style: TextStyle(color: Colors.blueAccent),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        remoteLogin();
                      }
                    },
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

              const SizedBox(
                height: 20,
              )
            ]),
          ),
        ),
      ),
    );
  }

  void loginin() {
    // myPres.writeValue("admission number", userNameController).then((value) => null);
    // Get.offAndToNamed("/Home");
    // remoteLogin();
  }

  Future<void> remoteLogin() async {
    http.Response response;
    response = await http.get(Uri.parse(
        "https://eugenewachira.co.ke/studentAccount/login.php?adm_no=${userNameController.text.trim()}&password=${passwordController.text.trim()}"));
    if (response.statusCode == 200) {
      var serverResponse = json.decode(response.body);
      int loginStatus = serverResponse['success'];
      if (loginStatus == 1) {
        var userData = serverResponse['userdata'];
        var adm = userData[0]['adm_no'];
        loginController.updateAdmission(adm);
        print(adm);
        Get.offAndToNamed("/Home");
      } else {
        print("Admission number or password is invalid");
        Get.offAndToNamed("/Login");
      }
    } else {
      print("Server Error ${response.statusCode}");
    }
  }
}
