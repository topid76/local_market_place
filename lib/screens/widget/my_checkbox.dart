import 'package:flutter/material.dart';

class MyCheckbox extends StatelessWidget {
  final dynamic value;
  final void Function(dynamic)? onChanged;
  MyCheckbox({required this.onChanged, required this.value});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: this.value,
      onChanged: onChanged,
    );
  }
}
