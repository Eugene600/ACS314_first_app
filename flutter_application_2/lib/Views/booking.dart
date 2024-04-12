import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:flutter_application_2/Views/customDropdown.dart';
import 'package:flutter_application_2/Views/customTextField.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:flutter_application_2/Views/home.dart';
import 'package:flutter_application_2/Views/register.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'flutterCarousel.dart'; // Import your FlutterCarousel widget
import 'package:intl/intl.dart';

TextEditingController pickingPoint = TextEditingController();
TextEditingController droppingPoint = TextEditingController();
TextEditingController date = TextEditingController();
TextEditingController time = TextEditingController();
String? selectedDroppingPoint;
bool _validateAdmissionNumber = false;
// List<String> generateDropdownItems(String pickingPointText) {
//   if (pickingPoint.text == 'Athi River') {
//     return [
//       '5:00AM Bus(Only from Athi River)',
//       '11:00AM Bus(Only from Athi River)',
//       '1:00PM Bus(Only from Athi River)',
//       '5:00PM Bus(Both from Athi River and Valley Road)',
//     ];
//   } else if (pickingPoint.text == 'Valley Road') {
//     return [
//       '6:30AM Bus(Only from Valley Road)',
//       '5:00PM Bus(Both from Athi River and Valley Road)',
//       'SUNDAY SPECIAL(Only from Valley Road)',
//     ];
//   } else {
//     return ['No Buses Available'];
//   }
// }

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
              decoration: InputDecoration(
                errorText: _validateAdmissionNumber
                    ? 'Admission number is required'
                    : null,
              ),
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
                print('Picking Point: $value');
                if (value == droppingPoint.text) {
                  droppingPoint.text = '';
                }
                pickingPoint.text = value ?? '';
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
                if (value == pickingPoint.text) {
                  pickingPoint.text = '';
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Cannot select the same location as Picking and Dropping Point'),
                    ),
                  );
                }
                if (pickingPoint.text == 'Athi River' ||
                    pickingPoint.text == 'Valley Road') {
                  // If picking point is Athi River or Valley Road, allow any dropping point
                  droppingPoint.text = value ?? '';
                } else if (pickingPoint.text != 'Athi River' &&
                    pickingPoint.text != 'Valley Road' &&
                    value == 'Athi River') {
                  // If picking point is neither Athi River nor Valley Road, dropping point should only be Athi River
                  droppingPoint.text = value ?? '';
                } else {
                  droppingPoint.text = '';
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'The Bus from Athi River to Valley Road only drops off students along Mombasa Road, it does not pick'),
                    ),
                  );
                }
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
              label: "Time",
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
                time.text = value ?? '';
              },
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Inside the build method of the Booking widget
                CustomButton(
                  label: "Book Bus",
                  icon: Icons.bus_alert_outlined,
                  action: () {
                    if (userNameController.text.isEmpty ||
                        pickingPoint.text.isEmpty ||
                        droppingPoint.text.isEmpty ||
                        date.text.isEmpty ||
                        time.text.isEmpty) {
                      // Show error message if any field is empty
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Error"),
                            content: Text("Please fill in all fields."),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      // All fields are filled, proceed with booking
                      remoteBooking(context);
                    }
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

Future<void> remoteBooking(BuildContext context) async {
  http.Response response;
  var body = {
    'adm_no': userNameController.text.trim(),
    'picking': pickingPoint.text.trim(),
    'dropping': droppingPoint.text.trim(),
    'date': date.text.trim(),
    'time': time.text.trim(),
  };
  response = await http.post(
    Uri.parse("https://eugenewachira.co.ke/studentAccount/busBooking.php"),
    body: body,
  );
  if (response.statusCode == 200) {
    var serverResponse = json.decode(response.body);
    int signedUp = serverResponse['success'];
    if (signedUp == 1) {
      // Booking successful, show success message
      if (pickingPoint.text != droppingPoint.text) {
        // Booking successful, navigate to another page
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Success"),
              content: Text("You have successfully booked a bus."),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Home()), // Replace NextPage with the class name of the page you want to navigate to
                    ).then((_) {
                      // This code will run when the Booking screen is popped
                      // You can add any functionality here that you want to execute after returning from the Booking screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Booking()), // Replace NextPage with the class name of the page you want to navigate to
                      );
                    });
                  },
                  child: Text("OK"),
                ),
              ],
            );
          },
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("You cannot pick the same location twice"),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Home()), // Replace NextPage with the class name of the page you want to navigate to
                    ).then((_) {
                      // This code will run when the Booking screen is popped
                      // You can add any functionality here that you want to execute after returning from the Booking screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Booking()), // Replace NextPage with the class name of the page you want to navigate to
                      );
                    });
                  },
                  child: Text("OK"),
                ),
              ],
            );
          },
        );
      }
    } else {
      // Booking failed, show error message
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text("Booking failed. Please try again later."),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Home()), // Replace NextPage with the class name of the page you want to navigate to
                  ).then((_) {
                    // This code will run when the Booking screen is popped
                    // You can add any functionality here that you want to execute after returning from the Booking screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Booking()), // Replace NextPage with the class name of the page you want to navigate to
                    );
                  });
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }
}
