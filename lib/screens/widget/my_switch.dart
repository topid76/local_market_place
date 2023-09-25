import 'package:flutter/material.dart';

class MySwitch extends StatelessWidget {
  final dynamic value;
  final void Function(dynamic)? onChanged;
  MySwitch({required this.value, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
      activeColor: Color.fromARGB(255, 43, 78, 251),
    );
  }
}
