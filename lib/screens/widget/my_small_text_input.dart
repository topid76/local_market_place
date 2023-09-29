import 'package:flutter/material.dart';

class MySmallTextInput extends StatelessWidget {
  final dynamic width;
  MySmallTextInput({required this.width});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: width,
      height: 40,
      child: TextField(
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
    );
  }
}
