import 'package:flutter/material.dart';
import 'package:local_marketplace/screens/widget/my_icon_button.dart';

class MyReview extends StatelessWidget {
  final String image;
  final String buyerName;
  final int rating;
  final String comment;
  final VoidCallback onPressed;
  MyReview(
      {required this.image,
      required this.buyerName,
      required this.rating,
      required this.comment,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(image),
                radius: 30,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Column(
                  children: [
                    Text(
                      buyerName,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) {
                          return Icon(
                            index < rating ? Icons.star : Icons.star_border,
                            size: 15,
                            color: Colors.orangeAccent,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Text(
            comment,
            maxLines: 3,
            style: TextStyle(overflow: TextOverflow.ellipsis),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.edit_square,
                  color: Colors.black45,
                ))
          ]),
        )
      ]),
    );
  }
}
