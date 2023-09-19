import 'package:flutter/material.dart';

class MySwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  MySwitch({required this.value, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: (bool? newValue) {
        onChanged(newValue!);
      },
      activeColor: Color.fromARGB(255, 43, 78, 251),
    );
  }
}
