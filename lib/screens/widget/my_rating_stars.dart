import 'package:flutter/material.dart';

class MyRatingStars extends StatelessWidget {
  final int totalStars;
  final int filledStars;

  MyRatingStars({required this.totalStars, required this.filledStars});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(totalStars, (index) {
        if (index < filledStars) {
          return Icon(Icons.star, color: Colors.orangeAccent);
        } else {
          return Icon(
            Icons.star_border,
            color: Colors.grey,
          );
        }
      }),
    );
  }
}
