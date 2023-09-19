import 'package:flutter/material.dart';

class MyCheckbox extends StatelessWidget {
  bool value = false;
  final ValueChanged<bool> onChanged;
  MyCheckbox({required this.onChanged, required this.value});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: this.value,
        onChanged: (bool? changeValue) {
          onChanged(changeValue!);
        });
  }
}
