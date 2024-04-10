import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String label;
  final String hint;
  final IconData icon;
  final TextEditingController? controller;
  final List<String> dropdownItems;
  final String? selectedValue;
  final ValueChanged<String>? onChanged;

  const CustomDropdown({
    Key? key,
    required this.label,
    required this.hint,
    required this.icon,
    this.controller,
    required this.dropdownItems,
    this.selectedValue,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   label,
        //   style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     fontSize: 30

        //   ),
        // ),
        SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: selectedValue,
          hint: Text(hint),
          onChanged: onChanged == null
              ? null // Provide null if onChanged is null
              : (String? value) {
                  if (value != null) {
                    onChanged!(value); // Call onChanged if value is not null
                  }
                },
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(),
          ),
          items: dropdownItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
      ],
    );
  }
}
