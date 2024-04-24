import 'package:flutter/material.dart';

var name = [
  "Jack Mungai",
  "Jeremy Ohema",
  "Jackie Chan",
  "Kimani Gathogo",
  "Valarie Mungai",
];

//create list of images
class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Image.network(
                  "https://images.pexels.com/photos/16176622/pexels-photo-16176622/free-photo-of-woman-with-curly-hair-posing-with-eyes-closed.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                  width: 100.0,
                  height: 100.0,
                ),
                const Column(
                  children: [
                    Text("Jackson Mwangi"),
                    Text("a214545454"),
                    Text("Mwangi@gmail.com"),
                  ],
                ),
              ],
            );
          },
          itemCount: 5,
        )
      ],
    );
  }
}
