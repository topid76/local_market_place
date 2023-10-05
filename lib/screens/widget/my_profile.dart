import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  final String profile;
  final String fullName;
  final String address;
  final String contactNumber;

  MyProfile(
      {required this.profile,
      required this.fullName,
      required this.address,
      required this.contactNumber});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(153, 196, 239, 222)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(profile),
                  radius: 80,
                ),
              ),
            ],
          ),
          Text(
            fullName,
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                address,
                style: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis),
              ),
              Text(
                contactNumber,
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
