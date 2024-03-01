import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Controller/calculator_controller.dart';
import 'package:flutter_application_2/Views/customButton.dart';
import 'package:flutter_application_2/Views/customTextField.dart';
import 'package:flutter_application_2/Views/customtext.dart';
import 'package:flutter_application_2/configs/constants.dart';
import 'package:get/get.dart';

class Calculator extends StatelessWidget {
  //variables
  TextEditingController aController = TextEditingController();
  TextEditingController bController = TextEditingController();
  CalculatorController calculatorController = Get.put(CalculatorController());
  // double sum = 0.0;

  @override
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        children: [
          CustomText(label: "Enter a"),
          CustomTextField(
            controller: aController,
            hint: "Value for a",
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(label: "Enter b"),
          CustomTextField(
            controller: bController,
            hint: "Value for b",
          ),
          SizedBox(
            height: 10,
          ),
          // CustomButton(label: "Calculate"),
          MaterialButton(
            onPressed: () {
              double a = double.parse(aController.text);
              double b = double.parse(bController.text);

              double s = a + b;
              calculatorController.updateSum(s);
              calculatorController.updateValue(a, b);
            },
            height: 50,
            child: Text("Calculate"),
            color: primaryColor,
          ),
          SizedBox(
            height: 30,
          ),
          Obx(() => CustomText(
              label:
                  "The sum  of ${calculatorController.a.value} and ${calculatorController.b.value} is ${calculatorController.sum.value}")),
        ],
      ),
    );
  }
}
