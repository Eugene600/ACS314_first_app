import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/busCard.dart';
import 'package:flutter_application_2/Views/navigationDestinations.dart';
import 'package:flutter_application_2/configs/constants.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Bus> buses = [
      Bus(
          driverName: "Kimani",
          busDescription:
              "New Bus bought last year and has a capacity of 64 students.",
          img:
              "https://www.daystar.ac.ke/blog/uploads/1689839708_daystar-bus-1.jpg"),
      Bus(
          driverName: "Kimani",
          busDescription:
              "New Bus bought last year and has a capacity of 64 students.",
          img:
              "https://www.daystar.ac.ke/blog/uploads/1689839708_daystar-bus-1.jpg"),
      Bus(
          driverName: "Kimani",
          busDescription:
              "New Bus bought last year and has a capacity of 64 students.",
          img:
              "https://www.daystar.ac.ke/blog/uploads/1689839708_daystar-bus-1.jpg"),
      Bus(
          driverName: "Kimani",
          busDescription:
              "New Bus bought last year and has a capacity of 64 students.",
          img:
              "https://www.daystar.ac.ke/blog/uploads/1689839708_daystar-bus-1.jpg"),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: buses.length,
              itemBuilder: (context, index) {
                return BusCard(buses: buses[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          NavigationBar(backgroundColor: Colors.grey, destinations: [
        NavigationDestinations(
          icon: Icons.home,
          label: "Home",
        ),
        NavigationDestinations(
          icon: Icons.explore,
          label: "Explore",
        ),
        NavigationDestinations(
          icon: Icons.person,
          label: "Profile",
        ),
        NavigationDestinations(
          icon: Icons.settings,
          label: "Settings",
        ),
      ]),
    );
  }
}
