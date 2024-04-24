import 'package:flutter/material.dart';

class NavigationDestinations extends StatelessWidget {
  final String label;
  final IconData icon;
  const NavigationDestinations({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      // icon: Visibility(
      //   visible: icon != null,
      //   child: Icon(icon),
      // ),
      icon: Icon(icon),
      label: label,
    );
  }
}

// class NavigationBar extends StatelessWidget {
//   final String? label;
//   final IconData? icon;
//   const NavigationBar({
//     super.key,
//     this.label,
//     this.icon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(children: [
//       CustomText(
//         label: label ?? "",
//       ),
//       Visibility(
//         visible: icon != null,
//         child: Icon(icon),
//       ),
//     ]);
//   }
// }
