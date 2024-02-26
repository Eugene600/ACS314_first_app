import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/configs/constants.dart';

//Class File
var screens = [
  Text("Home"),
  Text("Booking"),
  Text("Settings"),
  Text("Profile"),
];

var selectedPage = 0;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedPage],
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(
            Icons.home,
            color: appWhiteColor,
          ),
          Icon(
            Icons.bus_alert_rounded,
            color: appWhiteColor,
          ),
          Icon(
            Icons.person,
            color: appWhiteColor,
          ),
          Icon(
            Icons.settings,
            color: appWhiteColor,
          ),
        ],
        color: primaryColor,
        backgroundColor: appWhiteColor,
        buttonBackgroundColor: primaryColor,
        onTap: (index) {
          print(index);
        },
      ),
    );
  }
}
