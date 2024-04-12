import 'package:flutter_application_2/Views/booking.dart';
import 'package:flutter_application_2/Views/calculator.dart';
import 'package:flutter_application_2/Views/homePage.dart';
import 'package:flutter_application_2/Views/login.dart';
import 'package:flutter_application_2/Views/home.dart';
import 'package:flutter_application_2/Views/register.dart';
import 'package:flutter_application_2/Views/students.dart';
import 'package:get/get.dart';

class Routes {
  static var routes = [
    GetPage(name: "/", page: () => Login()),
    GetPage(name: "/Login", page: () => Login()),
    GetPage(name: "/calculator", page: () => Calculator()),
    GetPage(name: "/Registration", page: () => Register()),
    GetPage(name: "/HomePage", page: () => HomePage()),
    GetPage(name: "/Home", page: () => Home()),
    GetPage(name: "/Students", page: () => Students()),
    GetPage(name: "/Booking", page: () => Booking()),
  ];
}
