import 'package:flutter/material.dart';
import 'package:flutter_application_2/configs/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://netstorage-tuko.akamaized.net/images/0fgjhs6ffkq54dn1o.jpg?imwidth=1200",
              width: 200.0,
              height: 100.0,
            ),
            Text(
              "Daystar University",
            ),
          ],
        ),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
        centerTitle: true,
        toolbarHeight: 150,
        actions: [
          Icon(Icons.refresh),
        ],
      ),
    );
  }
}
