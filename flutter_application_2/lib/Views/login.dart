import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:flutter_application_2/Views/customTextField.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:flutter_application_2/configs/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daystar Application"),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
        centerTitle: true,
        actions: [
          Icon(Icons.refresh),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Image.asset(
            //     "/home/eugene/Documents/ACS314 _Mobile_ Apps _Projects/flutter_application_2/flutter_application_2/assets/images/daystar-blue.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    "https://www.daystar.ac.ke/images/crest-blue.png"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  label: "Login Screen",
                  fontSize: 30,
                  labelColor: primaryColor,
                ),
              ],
            ),
            CustomText(
              label: "username",
            ),
            CustomTextField(
              hint: "Phone number or email",
              icon: Icons.person,
            ),
            CustomText(
              label: "password",
            ),
            CustomTextField(
              hint: "Secret PIN",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  label: "Login",
                ),
              ],
            ),
            // Button
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       // Action to be performed when the button is pressed
            //       print('Button Pressed!');
            //       // You can add any functionality here
            //     },
            //     child: Text('Login'),
            //   ),
            // ),
          ]),
        ),
      ),
    );
  }
}
