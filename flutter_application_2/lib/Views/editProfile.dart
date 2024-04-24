import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:flutter_application_2/Views/customTextField.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:flutter_application_2/Views/login.dart';
import 'package:flutter_application_2/configs/constants.dart';

//
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            const Text(
              "Edit Profile",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: primaryColor),
            ),
            const SizedBox(
              height: 14,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 10))
                      ],
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbexRkIyn-NLb2s_I4gC0-Z9Y8_Z38U7O4nA&usqp=CAU")),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          color: primaryColor),
                      child: const Icon(
                        Icons.edit,
                        color: appWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const CustomText(
              label: "FullName",
            ),
            CustomTextField(
              hint: "Enter FullName",
              icon: Icons.person,
              controller: userNameController,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomText(
              label: "Email",
            ),
            CustomTextField(
              hint: "Email",
              icon: Icons.person,
              controller: userNameController,
            ),
            const CustomText(
              label: "Bus pick-up location ",
            ),
            CustomTextField(
              hint: "Please select where you normally board the bus",
              icon: Icons.person,
              controller: userNameController,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              label: "Edit Profile",
              icon: Icons.edit,
              action: () {
                // Get.offAndToNamed("/Registration");
              },
            ),
          ],
        ),
      ),
    );
  }
}
