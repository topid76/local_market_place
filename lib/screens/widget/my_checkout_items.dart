import 'package:flutter/material.dart';

class MyCheckOut extends StatelessWidget {
  final String shopName;
  final VoidCallback onPressed;
  final String image;
  final String productName;
  final double productPrice;
  final int counter;
  MyCheckOut(
      {required this.shopName,
      required this.onPressed,
      required this.image,
      required this.productName,
      required this.productPrice,
      required this.counter});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255)),
                    onPressed: onPressed,
                    icon: Icon(
                      Icons.store_sharp,
                      size: 30,
                      color: Colors.black87,
                    ),
                    label: Text(
                      shopName,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                    height: 130,
                    width: 130,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              productPrice.toString(),
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "X $counter",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
