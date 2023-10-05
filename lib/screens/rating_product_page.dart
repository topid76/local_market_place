import 'package:flutter/material.dart';
import 'package:local_marketplace/screens/widget/my_rating_stars.dart';

class RatingProductPage extends StatefulWidget {
  final int totalStars;
  int filledStars;

  RatingProductPage({required this.totalStars, required this.filledStars});

  State<StatefulWidget> createState() => _RatingProductPage();
}

class _RatingProductPage extends State<RatingProductPage> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle the tap on the stars here.
        // For this example, we'll increase the filledStars by 1.
        setState(() {
          if (widget.filledStars < widget.totalStars) {
            widget.filledStars++;
          }
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(widget.totalStars, (index) {
          if (index < widget.filledStars) {
            // Filled star
            return Icon(
              Icons.star,
              color: Colors.yellow,
            );
          } else {
            // Empty star
            return Icon(
              Icons.star_border,
              color: Colors.grey,
            );
          }
        }),
      ),
    );
  }
}
