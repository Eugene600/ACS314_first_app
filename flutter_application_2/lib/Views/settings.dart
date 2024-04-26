import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Controller/login_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart' as http;

LoginController loginController = Get.put(LoginController());

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    bool valNotify1 = true;
    bool valNotify2 = false;
    bool valNotify3 = false;

    // onChangeFunction1(bool newValue1) {
    //   setState(() {
    //     valNotify1 = newValue1;
    //   });
    // }
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Divider(
                height: 20,
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              buildAccountOption(context, "Change Password"),
              buildAccountOption(context, "Delete Account"),
              buildAccountOption(context, "Log Out"),
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  // Icon(
                  //   Icons.volume_up_outlined,
                  //   color: Colors.blue,
                  // ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  // Text(
                  //   "Notifications",
                  //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  // )
                ],
              ),
              // Divider(
              //   height: 20,
              //   thickness: 1,
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // buildNotificationOption("Theme Dark", valNotify1),
            ],
          ),
        ),
      ),
    );
  }
}

Padding buildNotificationOption(
    String title, bool value, Function onChangeMethod) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
              activeColor: Colors.blue,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              }),
        ),
      ],
    ),
  );
}

GestureDetector buildAccountOption(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      switch (title) {
        case "Change Password":
          // Navigate to change password page
          Navigator.pushNamed(context, '/change_password');
          break;
        case "Delete Account":
          // Show alert dialog for confirmation
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("No Access"),
                content: Text("This Feature cannot be implemented"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Ok",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  
                ],
              );
            },
          );
          break;
        case "Log Out":
          // Show alert dialog for logout confirmation
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Confirmation"),
                content: Text("Are you sure you want to log out?"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to login page
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Log Out",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              );
            },
          );
          break;
      }
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
        )
      ],
    ),
  );
}


Future<void> remoteDelete() async{
  http.Response response;
    response = await http.get(Uri.parse(
        "https://eugenewachira.co.ke/studentAccount/delete.php"));
  if (response.statusCode == 200) {
    var serverResponse = json.decode(response.body);
    int deleteStatus = serverResponse['success'];
    var userData = serverResponse['data'];
    var adm = userData[0]['adm_no'];
    print(adm);
    loginController.updateAdmission(adm);
    if (deleteStatus == 1) {
      
      Get.snackbar("Account Deleted", "Your account has been successfully deleted",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.blueAccent,
          colorText: Colors.white);
      Get.offAllNamed("/login");
    } else {
      Get.snackbar("Deletion Failed", "Failed to delete account",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  } else {
    print("Server Error ${response.statusCode}");
  }
}