import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/Views/homePage.dart';

class Bus {
  final String busName;
  final String busDescription;
  final String img;

  Bus({
    required this.busName,
    required this.busDescription,
    required this.img,
  });
}

class BusCard extends StatelessWidget {
  final Bus buses;
  const BusCard({
    super.key,
    required this.buses,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 650,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(buses.img),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              buses.busName,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              buses.busDescription,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
