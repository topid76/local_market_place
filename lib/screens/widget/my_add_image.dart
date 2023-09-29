import 'package:flutter/material.dart';

class MyAddImage extends StatelessWidget {
  final ImageProvider imageProvider;

  MyAddImage({required this.imageProvider});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover)),
    );
  }
}
