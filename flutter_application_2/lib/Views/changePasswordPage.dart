import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:flutter_application_2/Views/customTextField.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:flutter_application_2/configs/constants.dart';

TextEditingController emailController = TextEditingController();
TextEditingController userNameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController new_passwordController = TextEditingController();

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Password"),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Text(
          //   "Enter your email address",
          //   style: TextStyle(
          //     fontSize: 18,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.blue, // Use your desired color
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // Wrap the children with a Column
              children: [
                
                const CustomText(
                  label: "admission number",
                ),
                CustomTextField(
                  hint: "admission number",
                  icon: Icons.person,
                  controller: userNameController,
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomText(
                label: "Old password",
              ),
              CustomTextField(
                hint: "Enter  Old Password",
                icon: Icons.lock,
                prefIcon: Icons.visibility,
                isPassword: true,
                controller: passwordController,
              ),
              SizedBox(
                height: 40.0,
              ),
              const CustomText(
                label: "New password",
              ),
              CustomTextField(
                hint: "Enter  New Password",
                icon: Icons.lock,
                prefIcon: Icons.visibility,
                isPassword: true,
                controller: new_passwordController,
              ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                        label: "Change",
                        icon: Icons.app_registration_rounded,
                        action: () {
                          if (userNameController.text.isEmpty ||                             
                              passwordController.text.isEmpty ||
                              new_passwordController.text.isEmpty) {
                            // Show error message if any field is empty
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text(
                                    "Error",
                                    style: TextStyle(
                                      color: Colors
                                          .red, // Set the color of the title to red
                                    ),
                                  ),
                                  content: const Text(
                                    "Please fill in all fields.",
                                    style: TextStyle(
                                      color: Colors
                                          .blueAccent, // Set the color of the title to red
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed("/change_password");
                                      },
                                      child: const Text(
                                        "OK",
                                        style: TextStyle(
                                          color: Colors
                                              .blueAccent, // Set the color of the title to red
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            // remoteSignUp();
                          }
                        },
                      ),
            ],
          ),
        ],
      ),
    );
  }
}
