import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  final IconData? prefixIcon;
  final String label;
  final String hint;

  MyTextInput({
    this.prefixIcon,
    this.label = "",
    this.hint = "",
  });
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
          label: Text(
            label,
          ),
          hintText: (hint),
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null),
    );
  }
}
