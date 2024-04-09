import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'flutterCarousel.dart'; // Import your FlutterCarousel widget

class Booking extends StatelessWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'The following are times when buses are available:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Use your desired color
              ),
            ),
          ),
          CarouselSlider(
            items: [
              // Your carousel items here
              FlutterCarousel(
                title: '5:00 AM',
                description: "Athi River - Valley Road",
                icon1: Icons.calendar_today,
                icon2: Icons.location_pin,
                days: "Mondays - Fridays",
                location: "Bus Park",
              ),
              FlutterCarousel(
                title: "6.30AM",
                description: "Valley Road - Athi River",
                icon1: Icons.calendar_today,
                icon2: Icons.location_pin,
                days: "Mondays - Fridays",
                location: "Entrance Gate Parking",
              ),
              FlutterCarousel(
                title: '9:00 AM',
                description: "Athi River - Valley Road",
                icon1: Icons.calendar_today,
                icon2: Icons.location_pin,
                days: "ONLY Saturdays",
                location: "Hope Center",
              ),
              FlutterCarousel(
                title: '11:00 AM',
                description: "Athi River - Valley Road",
                icon1: Icons.calendar_today,
                icon2: Icons.location_pin,
                days: "Mondays, Wednesdays, Fridays",
                location: "Bus Park",
              ),
              FlutterCarousel(
                title: '1:00 PM',
                description: "Athi River - Valley Road",
                icon1: Icons.calendar_today,
                icon2: Icons.location_pin,
                days: "Tuesdays and Thursdays",
                location: "Bus Park",
              ),
              FlutterCarousel(
                title: "5.00PM",
                description: "Athi River - Valley Road",
                icon1: Icons.calendar_today,
                icon2: Icons.location_pin,
                days: "Mondays - Fridays",
                location: "Bus Park",
              ),
              FlutterCarousel(
                title: "5.00PM",
                description: "Valley-Road - Athi River",
                icon1: Icons.calendar_today,
                icon2: Icons.location_pin,
                days: "Mondays - Fridays",
                location: "Exit Gate Parking",
              ),
              FlutterCarousel(
                title: "SUNDAY SPECIAL",
                description: "Valley-Road - Athi River",
                icon1: Icons.calendar_today,
                icon2: Icons.location_pin,
                days: "Available from 3pm - 5pm",
                location: "Entrance Gate Parking",
              ),
              // Add more carousel items as needed
            ],
            options: CarouselOptions(
              height: 200, // Set the desired height here
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
          ),
        ],
      ),
    );
  }
}
