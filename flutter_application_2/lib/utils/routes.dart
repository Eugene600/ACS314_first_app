import 'package:flutter_application_2/Views/booking.dart';
import 'package:flutter_application_2/Views/calculator.dart';
import 'package:flutter_application_2/Views/changePasswordPage.dart';
import 'package:flutter_application_2/Views/homePage.dart';
import 'package:flutter_application_2/Views/login.dart';
import 'package:flutter_application_2/Views/home.dart';
import 'package:flutter_application_2/Views/register.dart';
import 'package:flutter_application_2/Views/settings.dart';
import 'package:flutter_application_2/Views/students.dart';
import 'package:get/get.dart';

class Routes {
  static var routes = [
    GetPage(name: "/", page: () => const Login()),
    GetPage(name: "/Login", page: () => const Login()),
    GetPage(name: "/calculator", page: () => Calculator()),
    GetPage(name: "/Registration", page: () => const Register()),
    GetPage(name: "/HomePage", page: () => const HomePage()),
    GetPage(name: "/Home", page: () => const Home()),
    // GetPage(name: "/Students", page: () => const Students()),
    GetPage(name: "/Booking", page: () => const Booking()),
    GetPage(name: "/change_password", page: () => ChangePasswordPage()),
    GetPage(name: "/settings", page: () => Settings()),
  ];
}
