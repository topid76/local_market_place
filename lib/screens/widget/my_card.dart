// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class myCard extends StatelessWidget {
  final String img;
  final String text;
  var price;
  var sold;
  final String location;
  var finalPrice;
  var finalSold;

  myCard(
      {required this.img,
      required this.text,
      required this.price,
      required this.sold,
      required this.location});

  @override
  void initState() {
    finalPrice = double.parse(price);
    finalSold = double.parse(sold);
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(img), fit: BoxFit.cover)),
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      location,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '\₱ $price',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
