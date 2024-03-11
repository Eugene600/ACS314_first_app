import 'package:flutter/material.dart';
import 'package:flutter_application_2/Views/busCard.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:get/get.dart';

class Booking2 extends StatelessWidget {
  const Booking2({super.key});

// Dummy user data (replace with your authentication/user management system)
  // String _userName = 'John Doe';
  // String _email = 'john.doe@example.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          // key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/user.png",
                width: 300,
                height: 300,
                // height: 300,
              ),
              TextFormField(
                initialValue: "Email",
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
              SizedBox(height: 16),
              TextFormField(
                initialValue: "Password",
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid password';
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
              TextFormField(
                initialValue: "Confirm Password",
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid password';
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
              SizedBox(height: 24),
              // ElevatedButton(
              //   onPressed: () {},
              //   child: Text('Edit Profile'),
              // ),
              CustomButton(
                label: "Edit Profile",
                // icon: icon
                action: () {
                  Get.offAndToNamed("/Login");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
