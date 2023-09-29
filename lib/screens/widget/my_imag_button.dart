import 'package:flutter/material.dart';

class MyImageButton extends StatelessWidget {
  final VoidCallback onPressed;

  MyImageButton({required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Center(
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.black87,
          ),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0))),
      ),
    );
  }
}
