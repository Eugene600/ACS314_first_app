import 'package:flutter/material.dart';

class FlutterCarousel extends StatelessWidget {
  const FlutterCarousel({
    Key? key,
    this.color = Colors.blue,
    required this.title,
    required this.description,
    required this.location,
    required this.days,
    this.icon1 = Icons.calendar_today,
    this.icon2 = Icons.location_pin,
    this.center,
  }) : super(key: key);

  final Color color;
  final String title;
  final String description;
  final String location;
  final String days;
  final IconData icon1;
  final IconData icon2;
  final Widget? center;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          center == null ? const Spacer() : center!,
          const Spacer(),
          Row(
            children: [
              Icon(
                icon1,
                color: Colors.white,
              ),
              Text(
                days,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Icon(
                icon2,
                color: Colors.white,
              ),
              Text(
                location,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
