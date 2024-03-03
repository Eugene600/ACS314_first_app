import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Controller/homePage_controller.dart';
import 'package:flutter_application_2/Views/calculator.dart';
import 'package:flutter_application_2/Views/homePage.dart';
import 'package:flutter_application_2/Views/settings.dart';
import 'package:flutter_application_2/Views/students.dart';
import 'package:flutter_application_2/configs/constants.dart';
import 'package:get/get.dart';

//Class File
var screens = [
  HomePage(),
  Calculator(),
  Settings(),
];

HomePage_controller homePage_controller = Get.put(HomePage_controller());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    double screenWidth = mediaQueryData.size.width;
    double screenHeight = mediaQueryData.size.height;

    double devicePixelRatio = mediaQueryData.devicePixelRatio;

    Orientation orientation = mediaQueryData.orientation;
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.home_filled),
        //   onPressed: () {
        //     Get.offAndToNamed("/Home");
        //   },
        // ),
        // leading: Image.network(
        //   "https://netstorage-tuko.akamaized.net/images/0fgjhs6ffkq54dn1o.jpg?imwidth=1200",
        //   // width: 500.0,
        //   height: 650.0,
        // ),
        leading: IconButton(
          icon: Icon(Icons.home_filled),
          onPressed: () {
            Get.offAndToNamed("/Home");
          },
        ),
        title: Text(
          "Daystar University",
        ),
        // title: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Image.network(
        //       "https://netstorage-tuko.akamaized.net/images/0fgjhs6ffkq54dn1o.jpg?imwidth=1200",
        //       width: 200.0,
        //       height: 100.0,
        //     ),
        //     Text(
        //       "Daystar University",
        //     ),
        //   ],
        // ),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
        centerTitle: true,
        toolbarHeight: 150,
        actions: [
          Icon(Icons.refresh),
        ],
      ),
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
          // Icon(
          //   Icons.person,
          //   color: appWhiteColor,
          // ),
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
