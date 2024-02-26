import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Controller/homePage_controller.dart';
import 'package:flutter_application_2/Views/calculator.dart';
import 'package:flutter_application_2/Views/homePage.dart';
import 'package:flutter_application_2/Views/students.dart';
import 'package:flutter_application_2/configs/constants.dart';
import 'package:get/get.dart';

//Class File
var screens = [
  Calculator(),
  Students(),
  Calculator(),
  Calculator(),
];

HomePage_controller homePage_controller = Get.put(HomePage_controller());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Center(
            child: screens[homePage_controller.selectedPage.value],
          )),
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
          homePage_controller.updateSelectedPage(index);
        },
      ),
    );
  }
}
