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
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://netstorage-tuko.akamaized.net/images/0fgjhs6ffkq54dn1o.jpg?imwidth=1200",
              width: 200.0,
              height: 100.0,
            ),
            // SizedBox(
            //   width: 150,
            // ),
            Text(
              "Daystar University",
            ),
          ],
        ),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
        centerTitle: true,
        toolbarHeight: 150,
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
                CustomText(
                  label: "Welcome to Our Portal",
                  fontSize: 50,
                  labelColor: primaryColor,
                ),
              ],
            ),

            SizedBox(
              height: 40,
            ),
            CustomText(
              label: "username",
            ),
            CustomTextField(
              hint: "Phone number or email",
              icon: Icons.person,
            ),
            SizedBox(
              height: 40,
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
            SizedBox(
              width: 50,
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
