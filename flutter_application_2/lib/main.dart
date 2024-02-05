import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customtext.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  )); //MaterialApp
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daystar Application"),
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          Icon(Icons.refresh),
        ],
      ),
      body: Column(children: [
        CustomText(
          label: "username",
        ),
        CustomText(
          label: "password",
        ),
      ]),
    );
  }
}
