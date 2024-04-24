import 'package:flutter/material.dart';
// import 'dart:ffi';
import 'package:flutter_application_2/utils/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: "/",
    getPages: Routes.routes,
    debugShowCheckedModeBanner: false,
  )); //MaterialApp
}
