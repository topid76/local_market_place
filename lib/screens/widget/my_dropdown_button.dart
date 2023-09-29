import 'package:flutter/material.dart';

class MyDropdownButton extends StatelessWidget {
  final String selectedValue;
  final List<String> items;
  final void Function(dynamic)? onChanged;

  MyDropdownButton(
      {required this.selectedValue,
      required this.items,
      required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      onChanged: onChanged,
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          child: Text(item),
          value: item,
        );
      }).toList(),
    );
  }
}
