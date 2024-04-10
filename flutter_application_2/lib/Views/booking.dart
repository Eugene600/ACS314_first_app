import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:flutter_application_2/Views/customDropdown.dart';
import 'package:flutter_application_2/Views/customTextField.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:flutter_application_2/Views/register.dart';
import 'flutterCarousel.dart'; // Import your FlutterCarousel widget
import 'package:intl/intl.dart';

TextEditingController pickingPoint = TextEditingController();
TextEditingController droppingPoint = TextEditingController();
TextEditingController date = TextEditingController();
TextEditingController time = TextEditingController();
String? selectedDroppingPoint;

class Booking extends StatelessWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Please fill in the details below if you wish to use the Bus:',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue, // Use your desired color
                ),
              ),
            ),
            CustomText(
              label: "admission number",
            ),
            CustomTextField(
              hint: "Enter Admission Number",
              icon: Icons.person,
              controller: userNameController,
            ),
            SizedBox(
              height: 40,
            ),
            CustomText(
              label: "Picking Point",
            ),
            CustomDropdown(
              label: "Picking Point",
              hint: "Select where you will be boarding the bus",
              icon: Icons.location_city,
              dropdownItems: [
                'Athi River',
                'Valley Road',
                'Shell(Opposite Nyayo)',
                'Cabanus',
                'Mlolongo',
                'Syokimau',
                'Shalom',
                'Devik',
              ],
              controller: pickingPoint,
              selectedValue: selectedDroppingPoint,
              onChanged: (String? value) {
                // Handle the dropdown value change
                selectedDroppingPoint = value;
              },
            ),
            SizedBox(
              height: 40,
            ),
            CustomText(
              label: "Dropping Point",
            ),
            CustomDropdown(
              label: "Dropping Point",
              hint: "Select where you will be alighting the bus",
              icon: Icons.location_city,
              dropdownItems: [
                'Athi River',
                'Valley Road',
                'Shell(Opposite Nyayo)',
                'Cabanus',
                'Mlolongo',
                'Syokimau',
                'Shalom',
                'Devik',
              ],
              controller: droppingPoint,
              selectedValue: selectedDroppingPoint,
              onChanged: (String? value) {
                // Handle the dropdown value change
                selectedDroppingPoint = value;
              },
            ),
            SizedBox(
              height: 40,
            ),
            CustomText(
              label: "Date",
            ),
            CustomTextField(
              hint: "Enter Date",
              icon: Icons.date_range,
              controller: date,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100));

                if (pickedDate != null) {
                  date.text = DateFormat('yyyy-MM-dd').format(pickedDate);
                }
              },
            ),
            SizedBox(
              height: 40,
            ),
            CustomText(
              label: "Time",
            ),
            CustomDropdown(
              label: "Dropping Point",
              hint: "Select where you will be alighting the bus",
              icon: Icons.location_city,
              dropdownItems: [
                '5:00AM Bus(Only from Athi River)',
                '6:30AM Bus(Only from Valley Road)',
                '9:00AM Bus(Only on Saturdays from Athi River)',
                '11:00AM Bus(Only from Athi River)',
                '1:00PM Bus(Only from Athi River)',
                '5:00PM Bus(Both from Athi River and Valley Road)',
                'SUNDAY SPECIAL(Only from Valley Road)',
              ],
              controller: time,
              selectedValue: selectedDroppingPoint,
              onChanged: (String? value) {
                // Handle the dropdown value change
                selectedDroppingPoint = value;
              },
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  label: "Book Bus",
                  icon: Icons.bus_alert_outlined,
                  action: () {
                    // Get.offAndToNamed("/Registration");
                    if (pickingPoint.text != droppingPoint.text) {}
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
