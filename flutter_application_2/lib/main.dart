import 'package:flutter/material.dart';
// import 'dart:ffi';
import 'package:flutter_application_2/Views/calculator.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:flutter_application_2/Views/customTextField.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:flutter_application_2/Views/homePage.dart';
import 'package:flutter_application_2/Views/login.dart';
import 'package:flutter_application_2/Views/register.dart';
import 'package:flutter_application_2/configs/constants.dart';
import 'package:flutter_application_2/utils/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: "/",
    getPages: Routes.routes,
    debugShowCheckedModeBanner: false,
  )); //MaterialApp
}
