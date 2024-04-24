import 'package:flutter/material.dart';

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
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
            const SizedBox(height: 16.0),
            Text(
              buses.busName,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              buses.busDescription,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
