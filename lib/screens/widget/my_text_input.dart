import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  final IconData? prefixIcon;
  final String label;

  MyTextInput({this.prefixIcon, this.label = ""});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Colors.deepOrange),
          ),
          labelStyle: TextStyle(color: Colors.deepOrange),
          label: Text(label),
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null),
    );
  }
}
