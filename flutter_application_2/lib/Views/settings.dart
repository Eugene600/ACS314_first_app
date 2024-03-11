import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              SizedBox(
                height: 40,
              ),
              Row(
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
              Divider(
                height: 20,
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              buildAccountOption(context, "Change Password"),
              buildAccountOption(context, "Delete Account"),
              buildAccountOption(context, "Social"),
              buildAccountOption(context, "Language"),
              buildAccountOption(context, "Privacy and Security"),
              SizedBox(
                height: 40,
              ),
              Row(
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
    onTap: () {},
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            )),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
        )
      ],
    ),
  );
}
