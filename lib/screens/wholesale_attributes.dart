import 'package:flutter/material.dart';
import 'package:local_marketplace/screens/widget/my_small_text_input.dart';

class WholeSaleAttributes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MySmallTextInput(
          width: 90,
        ),
        Text(
          "-",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        MySmallTextInput(width: 90),
        Text(
          ":",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        MySmallTextInput(width: 100),
      ],
    );
  }
}
