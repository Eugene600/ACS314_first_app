import 'package:flutter_application_2/Views/homePage.dart';
import 'package:flutter_application_2/Views/login.dart';
import 'package:flutter_application_2/Views/register.dart';
import 'package:get/get.dart';

class Routes {
  static var routes = [
    GetPage(name: "/", page: () => Login()),
    GetPage(name: "/Login", page: () => Login()),
    GetPage(name: "/Registration", page: () => Register()),
    GetPage(name: "/Home", page: () => HomePage()),
  ];
}
