import 'package:flutter/material.dart';

class MyToRate extends StatelessWidget {
  final String image;
  final String shopName;
  final String status;
  final String productImage;
  final String productName;
  final String quantity;
  final VoidCallback onPressed;
  final bool hasRatings; // Add a boolean to indicate whether there are ratings

  MyToRate({
    required this.image,
    required this.shopName,
    required this.status,
    required this.productImage,
    required this.productName,
    required this.quantity,
    required this.onPressed,
    required this.hasRatings, // Pass the hasRatings boolean to your constructor
  });

  @override
  Widget build(BuildContext context) {
    if (!hasRatings) {
      // If there are no ratings, display centered text
      return Center(
        child: Text(
          "No one to rate",
          style: TextStyle(fontSize: 18),
        ),
      );
    } else {
      // If there are ratings, display the existing widget
      return Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(image),
                    radius: 30,
                  ),
                  Text(
                    shopName,
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    status,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: NetworkImage(
                    productImage,
                  ),
                  width: 150,
                  height: 100,
                ),
                Column(
                  children: [
                    Text(
                      productName,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      quantity,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 243, 113),
                    ),
                    child: Text(
                      "To Rate",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }
  }
}
