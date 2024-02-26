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
          busName: "Luxury Bus",
          busDescription:
              "On July 18, 2023, Daystar University received and dedicated a new 62-seater luxury coach during a Chapel service held at Main campus Athi River. The dedication ceremony was attended by the Vice-chancellor, Prof. Laban Ayiro, Company Member Bishop Emeritus Rt. Rev. Joseph Kanuku, Company Board Vice-chair, Dr. Stanley Mukolwe, Council Member Mrs. Lilian Ogolla, DVC Finance Administration and Planning Prof Muturi Wachira, DVC Academic Research and Student Affairs Prof. Faith Nguru, University Chaplain Rev. Miano Weche, members of Management and Senate, students, faculty and staff.",
          img:
              "https://www.daystar.ac.ke/blog/uploads/1689839708_daystar-bus-1.jpg"),
      Bus(
          busName: "Student Bus ",
          busDescription:
              "New Bus bought last year and has a capacity of 64 students.",
          img:
              "https://scontent.fnbo8-1.fna.fbcdn.net/v/t1.6435-9/67190047_2509416192411716_2522599077951045632_n.png?_nc_cat=101&ccb=1-7&_nc_sid=7f8c78&_nc_ohc=94u49WLzOHsAX9WEe_E&_nc_ht=scontent.fnbo8-1.fna&oh=00_AfAOPyap2G44hpu2EnxdWrgg-7zsu9omckxFlZtN6-2sLQ&oe=6603B64A"),
      Bus(
          busName: "Staff Bus",
          busDescription:
              "New Bus bought last year and has a capacity of 64 students.",
          img:
              "https://www.daystar.ac.ke/blog/uploads/1689839708_daystar-bus-1.jpg"),
      Bus(
          busName: "Rented Buses",
          busDescription:
              "New Bus bought last year and has a capacity of 64 students.",
          img:
              "https://i0.wp.com/biznakenya.com/wp-content/uploads/2021/02/Super-Metro-Routes.jpg"),
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
          icon: Icons.bus_alert_rounded,
          label: "Booking",
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
