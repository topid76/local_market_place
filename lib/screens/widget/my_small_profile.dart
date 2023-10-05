import 'package:flutter/material.dart';

class MySmallProfile extends StatelessWidget {
  final String image;
  final String shopName;
  final String address;

  MySmallProfile(
      {required this.image, required this.shopName, required this.address});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(image),
            radius: 35,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  shopName,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  address,
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
