import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/calculator.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:flutter_application_2/Views/customTextField.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:flutter_application_2/Views/homePage.dart';
import 'package:flutter_application_2/Views/login.dart';
import 'package:flutter_application_2/Views/register.dart';
import 'package:flutter_application_2/configs/constants.dart';

void main() {
  runApp(MaterialApp(
    // home: HomePage(),
    // home: Login(),
    home: Register(),
    debugShowCheckedModeBanner: false,
  )); //MaterialApp
}
