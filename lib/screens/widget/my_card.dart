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
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.network(
              img,
              width: 150,
              height: 150,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 30,
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  text,
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  price.toString(),
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.star_border_outlined),
              Icon(Icons.star_border_outlined),
              Icon(Icons.star_border_outlined),
              Icon(Icons.star_border_outlined),
              Icon(Icons.star_border_outlined),
              Text(
                sold.toString(),
                style: TextStyle(
                    color: const Color.fromARGB(255, 113, 111, 111),
                    fontSize: 15),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  location,
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
