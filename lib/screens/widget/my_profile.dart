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
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                address,
                style: TextStyle(fontSize: 18),
              ),
              Text(
                contactNumber,
                style: TextStyle(fontSize: 18),
              )
            ],
          )
        ],
      ),
    );
  }
}
