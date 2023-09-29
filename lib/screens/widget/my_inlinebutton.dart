import 'package:flutter/material.dart';

class MyInlineButton extends StatelessWidget {
  final String text;
  final VoidCallback function;
  MyInlineButton({required this.text, required this.function});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(),
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(color: Colors.blueAccent, fontSize: 13),
      ),
    );
  }
}
