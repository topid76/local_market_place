import 'package:flutter/material.dart';

class MyRadio extends StatelessWidget {
  final String label;
  final TextStyle style;
  final bool value;
  final bool groupValue;
  final ValueChanged<bool> onChanged;

  MyRadio(
      {required this.label,
      required this.value,
      required this.groupValue,
      required this.onChanged,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.5,
          child: Radio(
              value: value,
              groupValue: groupValue,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              }),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            label,
            style: style,
          ),
        ),
      ],
    );
  }
}
